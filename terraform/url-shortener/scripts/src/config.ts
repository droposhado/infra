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

const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
const charsRegex = /^[a-zA-Z0-9]+$/;
const redirectCode = 301;

export { Bindings, chars, charsRegex, Link, redirectCode };
