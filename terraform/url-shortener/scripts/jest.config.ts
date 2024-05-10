// module.exports = {
//   preset: "ts-jest",
//   testEnvironment: 'miniflare',
//   testMatch: ['**/test/**/*.+(ts|tsx)', '**/src/**/(*.)+(spec|test).+(ts|tsx)'],
//   transform: {
//     // '^.+\\.(ts|tsx)$': 'esbuild-jest',
//     "^.+\\.ts?$": "ts-jest",
//   },
// }

import type { JestConfigWithTsJest } from 'ts-jest'

import { jsWithTsESM as tsjPreset } from 'ts-jest/presets';

const jestConfig: JestConfigWithTsJest = {
  preset: "ts-jest",
  rootDir: "./",
  testEnvironment: 'miniflare',
  testMatch: ['**/test/**/*.+(ts|tsx)', '**/src/**/(*.)+(spec|test).+(ts|tsx)'],
  transform: {
    ...tsjPreset.transform,
    // '^.+\\.[tj]sx?$' to process js/ts with `ts-jest`
    // '^.+\\.m?[tj]sx?$' to process js/ts/mjs/mts with `ts-jest`
    '^.+\\.tsx?$': [
      'ts-jest',
      {
        // ts-jest configuration goes here
      },
    ],
  },
}

export default jestConfig
