import { describe, expect, test, it } from '@jest/globals';

import { Backpack } from './backpack'

import { chars } from './config'

const MOCK_ENV = {
  SLUG_SIZE: 5,
}

describe('Backpack', () => {
  const backpack = new Backpack
  it('Random string', async () => {
    const randomString = backpack.createRandomString(chars, MOCK_ENV.SLUG_SIZE)
    expect(randomString.length).toBe(5)
  })
  it('Valid http URL', async () => {
    const url = "http://example.com"
    const result = backpack.isValidURL(url)
    expect(result).toBe(true)
  })
  it('Valid https URL', async () => {
    const url = "https://example.com"
    const result = backpack.isValidURL(url)
    expect(result).toBe(true)
  })
  it('Invalid http URL', async () => {
    const url = "http://examplecom"
    const result = backpack.isValidURL(url)
    expect(result).toBe(false)
  })
  it('Invalid https URL', async () => {
    const url = "https://examplecom"
    const result = backpack.isValidURL(url)
    expect(result).toBe(false)
  })
  it('Invalid schema', async () => {
    const url = "postgres://user:pass@examplecom:5432/database"
    const result = backpack.isValidURL(url)
    expect(result).toBe(false)
  })
  it('Schema typo', async () => {
    const url = "htpps://example.com"
    const result = backpack.isValidURL(url)
    expect(result).toBe(false)
  })
})
