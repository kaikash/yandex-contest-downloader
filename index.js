require('babel-polyfill')

const CoffeeScript = require('coffeescript')

const { compile } = CoffeeScript;
CoffeeScript.compile = (file, options) => (
  compile(file, Object.assign(options, {
    transpile: {
      presets: ['@babel/preset-env'],
    },
  }))
)
CoffeeScript.register()

require('./lib/app.coffee')