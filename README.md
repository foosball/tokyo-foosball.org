# tokyo-foosball.org

* CoffeeScript
* Handlebars
* Stylus

## Install

```
$ npm install
$ bower install
```

## Getting started

### Run

```
$ brunch watch --server
```

### Build

```
$ brunch build --production
```

## Test

* `npm install -g mocha-phantomjs`
* Add test target file name at `test/initialize.coffee`
* `mocha-phantomjs public/test/index.html` or `npm test` (you need to build once before test)
