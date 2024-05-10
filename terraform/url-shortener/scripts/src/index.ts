import { Hono } from 'hono'
import { bearerAuth } from 'hono/bearer-auth'
import { logger } from 'hono/logger'
import { secureHeaders } from 'hono/secure-headers'
import { sentry } from '@hono/sentry'

import { PrismaClient } from '@prisma/client'
import { PrismaD1 } from '@prisma/adapter-d1'

import { Bindings, chars, charsRegex, Link, redirectCode } from './config'

import { Backpack } from './backpack'

const app = new Hono<{ Bindings: Bindings }>()


app.use('*', sentry())
app.use(secureHeaders())
app.use(logger())
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

  const adapter = new PrismaD1(c.env.DB)
  const prisma = new PrismaClient({ adapter })

  const result = await prisma.link.findUnique({
    where: {
      slug: slug,
    },
  })

  if (!result) {
    return c.redirect('https://' + c.env.DOMAIN + '/404', redirectCode)
  }
  return c.redirect(result.url, redirectCode)
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

  const adapter = new PrismaD1(c.env.DB)
  const prisma = new PrismaClient({ adapter })

  const data = {
    slug: slug,
    url: body.url
  }

  const result = await prisma.link.create({ data: data })

  if (!result) {
    return c.json({
      error: "error"
    }, 500)
  }

  return c.json({
    result
  }, 200)

})

export default app
