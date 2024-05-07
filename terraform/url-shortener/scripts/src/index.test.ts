import { describe, expect, it } from '@jest/globals';

import app from '.'

const MOCK_ENV = {
  DOMAIN: 'example.com',
  DB: { prepare: () => { } },
  SLUG_SIZE: 5,
  TOKEN: 'awesometoken'
}

describe('Test the application', () => {
  it('Root redirect', async () => {
    const res = await app.request('http://localhost/', {}, MOCK_ENV)
    expect(res.headers.get('Location')).toBe('https://' + MOCK_ENV.DOMAIN)
    expect(res.status).toBe(301)
  })
})
