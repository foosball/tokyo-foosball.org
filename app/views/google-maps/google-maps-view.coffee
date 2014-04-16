View     = require 'views/base/view'
template = require 'templates/google-maps/google-maps'

module.exports = class GoogleMapsView extends View
  container: ".map-container"
  template: template
  id: 'map'

  attach: ->
    super
    @init()

  googleMapOptions:
    center: new google.maps.LatLng(35.697456, 139.696426)
    zoom: 11
    zoomControl: true
    zoomControlOptions:
      style: google.maps.ZoomControlStyle.DEFAULT

    disableDoubleClickZoom: true
    mapTypeControl: true
    mapTypeControlOptions:
      style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR

    scaleControl: true
    scrollwheel: true
    streetViewControl: true
    draggable: true
    overviewMapControl: true
    overviewMapControlOptions:
      opened: false

    mapTypeId: google.maps.MapTypeId.ROADMAP
    styles: [
      {
        featureType: "landscape.natural"
        elementType: "geometry.fill"
        stylers: [
          { visibility: "on" }
          { color: "#e0efef" }
        ]
      }
      {
        featureType: "poi"
        elementType: "geometry.fill"
        stylers: [
          { visibility: "on" }
          { hue: "#1900ff" }
          { color: "#c0e8e8" }
        ]
      }
      {
        featureType: "landscape.man_made"
        elementType: "geometry.fill"
      }
      {
        featureType: "road"
        elementType: "geometry"
        stylers: [
          { lightness: 100 }
          { visibility: "simplified" }
        ]
      }
      {
        featureType: "road"
        elementType: "labels"
        stylers: [visibility: "off"]
      }
      {
        featureType: "water"
        stylers: [color: "#7dcdcd"]
      }
      {
        featureType: "transit.line"
        elementType: "geometry"
        stylers: [
          { visibility: "on" }
          { lightness: 700   }
        ]
      }
    ]

  init: ->
    map = new google.maps.Map(@$el.get(0), @googleMapOptions)
    locations = [
      [ 35.706132, 139.648526 ]
    ]
    for _, key in locations
      marker = new google.maps.Marker(
        icon: ""
        position: new google.maps.LatLng(locations[key][0], locations[key][1])
        map: map
      )
      infoWindow = new google.maps.InfoWindow(content: "Amusement Bar A-SIDE\n<a href=\"http://yahoo.co.jp\">aaa</a>")
      google.maps.event.addListener marker, "click", do ->
        -> infoWindow.open map, marker
