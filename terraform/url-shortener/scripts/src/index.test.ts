import { describe, expect, it } from '@jest/globals';

import app from '.'

const MOCK_ENV = {
  DOMAIN: 'example.com',
  // DB: { prepare: () => { } },
  SLUG_SIZE: 5,
  TOKEN: 'awesometoken'
}

describe('Test the application', () => {
  it('Root redirect', async () => {
    const res = await app.request('http://localhost/', {}, MOCK_ENV)
    expect(res.headers.get('Location')).toBe('https://' + MOCK_ENV.DOMAIN)
    expect(res.status).toBe(301)
  })
  it('Redirect OK', async () => {
    const res = await app.request('http://localhost/12345', {}, {
      DOMAIN: 'example.com',
      DB: {},
      SLUG_SIZE: 5,
    })
    // console.log(res.headers)
    expect(res.headers.get('Location')).toBe('https://redirected.com')
    expect(res.status).toBe(301)
  })
})
