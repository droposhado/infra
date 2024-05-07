/*
 This code is an exception and remains under license from the creators
 who can be consulted at the urls declared above the code
*/

class Backpack {

  // https://sentry.io/answers/generate-random-string-characters-in-javascript/
  createRandomString(chars: string, length: number): string {
    let result = "";
    for (let i = 0; i < length; i++) {
      result += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    return result;
  }

  // https://medium.com/@snyksec/secure-javascript-url-validation-a74ef7b19ca8
  isValidURL(url: string) {
    var res = url.match(/(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,})/gi);
    return (res !== null);
  };

}
export { Backpack };
