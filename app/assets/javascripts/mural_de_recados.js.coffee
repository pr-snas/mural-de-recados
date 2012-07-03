window.MuralDeRecados =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    window.zIndex = 0
    new MuralDeRecados.Routers.Recados()
    Backbone.history.start()
    spinner.stop()

opts =
  lines: 13
  length: 18
  width: 4
  radius: 22
  rotate: 0
  color: '#000'
  speed: 0.9
  trail: 80
  shadow: true
  hwaccel: true
  className: 'spinner'
  zIndex: 2e9

spinner = new Spinner(opts).spin($('#wrapper')[0])
$(spinner.el).css(
  top: '50%'
  marginTop: '-50px'
)

$(document).ready ->
  MuralDeRecados.init()
