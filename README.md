# Rescript formatting issue repro

Rescript's (auto-) formatting of modules with explicitly annotated type inside a function yields syntactically incorrect result.

This repository is a simple reproduction of the issue:

- run `npm run res:build`
  - compilation should be successfull
- run `npx rescript format -all`
- run `npm run res:build` again
  - compilation should fail due to syntax error

## Repro on Rescript's playground
[Repro example on Rescript's playground](https://rescript-lang.org/try?version=v10.1.2&code=LYewJgrgNgpgBAFwJ4Ad4BU4F44G8BQccsCcAZgFxwDOCATgJYB2A5tgHw33Mv4C++fCThscACgAeVWo1YBKDnkJxQkWHACyVTDgJEiwsthqLqcANTmaygUQkBadhoB0ZfoID0HuOgAW8AEMAIxAAN3gAdwYoKDgg+DEAiAQQewUyEDpgAIQEGDB8LyIUxH9yEBiQKNY4MQjfBgBjXzgGMyYQUlCAqAYwGiQmBACJOQpC72FRWqkuWRYFLE4CIqJVaHgNYxXvfWIYUiMcMyWTS2tVuD5tCf0HJ1dbgSA) can be found at:  
https://rescript-lang.org/try?version=v10.1.2&code=LYewJgrgNgpgBAFwJ4Ad4BU4F44G8BQccsCcAZgFxwDOCATgJYB2A5tgHw33Mv4C++fCThscACgAeVWo1YBKDnkJxQkWHACyVTDgJEiwsthqLqcANTmaygUQkBadhoB0ZfoID0HuOgAW8AEMAIxAAN3gAdwYoKDgg+DEAiAQQewUyEDpgAIQEGDB8LyIUxH9yEBiQKNY4MQjfBgBjXzgGMyYQUlCAqAYwGiQmBACJOQpC72FRWqkuWRYFLE4CIqJVaHgNYxXvfWIYUiMcMyWTS2tVuD5tCf0HJ1dbgSA

- just click the `Format` button to observe the same issue

## Installation

```sh
npm install
```

## Build

- Build: `npm run res:build`
- Clean: `npm run res:clean`
- Build & watch: `npm run res:dev`

## Run

```sh
node src/Demo.bs.js
```
