Layout = require 'views/layout/layout'

module.exports = class Controller extends Chaplin.Controller
  beforeAction: ->
    @reuse 'layout', Layout
