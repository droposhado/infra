declare module 'backpack' {
  interface Backpack {
    (createRandomString: string | number): string
    (isValidURL: string): boolean
  }
}
