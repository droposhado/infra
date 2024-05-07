import { Hono } from 'hono'
import { bearerAuth } from 'hono/bearer-auth'
import { secureHeaders } from 'hono/secure-headers'
import { sentry } from '@hono/sentry'

import { Bindings, chars, charsRegex, Link, redirectCode } from './config'

import { Backpack } from './backpack'

const app = new Hono<{ Bindings: Bindings }>()

app.use('*', sentry())
app.use(secureHeaders())
app.use('/link/*', async (c, next) => {
  const token = c.env.TOKEN
  const auth = bearerAuth({ token })
  return await auth(c, next)
})

app.get('/', (c) => c.redirect('https://' + c.env.DOMAIN, redirectCode))

app.get('/:slug', async (c) => {
  const slug = c.req.param('slug')

  if (slug.length > c.env.SLUG_SIZE) {
    return c.redirect('https://' + c.env.DOMAIN + '/404', redirectCode)
  }

  if (!charsRegex.test(slug)) {
    return c.redirect('https://' + c.env.DOMAIN + '/404', redirectCode)
  }

  try {
    let { results } = await c.env.DB.prepare("SELECT * FROM links WHERE slug = ?").bind(slug).all<Link>()

    if (results.length < 1) {
      return c.redirect('https://' + c.env.DOMAIN + '/404', redirectCode)
    }

    return c.redirect(results[0].link, redirectCode)
  } catch (e) {
    c.redirect('https://' + c.env.DOMAIN + '/404', redirectCode)
  }
})

app.post('/link', async (c) => {
  const contentTypeHeader = c.req.header('Content-Type')
  if (contentTypeHeader != "application/json") {
    return c.json({
      error: 'Need Content-Type header with application/json payload'
    }, 400)
  }

  const slug_size = c.env.SLUG_SIZE
  const backpack = new Backpack
  const slug = backpack.createRandomString(chars, slug_size)
  const body = await c.req.json()

  if (body.url && !backpack.isValidURL(body.url)) {
    return c.json({
      error: 'Malformed payload, need valid url to shorten'
    }, 400)
  }

  let { success, error } = await c.env.DB.prepare("INSERT INTO links (link, slug) VALUES (?, ?) returning id").bind(body.url, slug).run()

  // TODO: better status code
  if (!success) {
    return c.json({
      error: error
    }, 500)
  }

  try {
    let { results } = await c.env.DB.prepare("SELECT * FROM links WHERE slug = ?").bind(slug).all<Link>()

    if (results.length < 1) {
      return c.redirect('https://' + c.env.DOMAIN + '/404', redirectCode)
    }

    return c.json({
      id: results[0].id,
      url: results[0].link,
      slug: results[0].slug
    }, 200)
  } catch (e) {
    c.redirect('https://' + c.env.DOMAIN + '/404', redirectCode)
  }
})

export default app
