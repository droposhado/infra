import { Hono } from 'hono'
import { bearerAuth } from 'hono/bearer-auth'
import { sentry } from '@hono/sentry'


// https://sentry.io/answers/generate-random-string-characters-in-javascript/
function createRandomString(length: number): string {
  const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  let result = "";
  for (let i = 0; i < length; i++) {
    result += chars.charAt(Math.floor(Math.random() * chars.length));
  }
  return result;
}

type Bindings = {
  DB: D1Database
  DOMAIN: string
  SLUG_SIZE: number
  TOKEN: string
}

type Link = {
  slug: string
  id: string
  link: string
}

const app = new Hono<{ Bindings: Bindings }>()

app.use('*', sentry())
app.use('/link/*', async (c, next) => {
  const token = c.env.TOKEN
  const auth = bearerAuth({ token })
  return await auth(c, next)
})

app.get('/', (c) => c.redirect('https://' + c.env.DOMAIN, 301))

app.get('/:slug', async (c) => {
  const slug = c.req.param('slug')

  try {
    let { results } = await c.env.DB.prepare("SELECT * FROM links WHERE slug = ?").bind(slug).all<Link>()

    if (results.length < 1) {
      return c.redirect('https://' + c.env.DOMAIN + '/404', 301)
    }

    return c.redirect(results[0].link, 301)
  } catch (e) {
    c.redirect('https://' + c.env.DOMAIN + '/404', 301)
  }
})

app.post('/link', async (c) => {
  const slug_size = c.env.SLUG_SIZE
  const slug = createRandomString(slug_size)
  const body = await c.req.json()

  let { results } = await c.env.DB.prepare("INSERT INTO links (link, slug) VALUES (?, ?)").bind(body.url, slug).all()

  // TODO: check generated

  return c.text('https://l.' + c.env.DOMAIN + '/' + slug)
})

export default app
