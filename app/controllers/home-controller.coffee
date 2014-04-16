Controller          = require 'controllers/base/controller'
HomeView            = require 'views/home/home-view'
HomeViewModel       = require 'view-models/home/home-view-model'
GoogleMapsView      = require 'views/google-maps/google-maps-view'
GoogleMapsViewModel = require 'view-models/home/home-view-model'

module.exports = class HomeController extends Controller
  index: ->
    @viewModel = new HomeViewModel
    @view = @reuse 'home', HomeView, model: @viewModel

    @googleMapsViewModel = new GoogleMapsViewModel
    @googleMapsView = @reuse 'google-maps', GoogleMapsView, model: @googleMapsViewModel
