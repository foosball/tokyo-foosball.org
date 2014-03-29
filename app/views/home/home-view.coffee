View     = require 'views/base/view'
template = require 'templates/home/home'

module.exports = class HomeView extends View
  container: '#scene-root'
  template: template

  attach: ->
    super

    wow = new WOW(
      boxClass:     'wow'
      animateClass: 'animated',
      offset:       0
      mobile:       true
    )
    wow.init()
