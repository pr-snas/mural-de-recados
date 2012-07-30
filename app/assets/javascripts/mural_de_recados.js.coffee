window.MuralDeRecados =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new MuralDeRecados.Routers.Recados()
    Backbone.history.start()
    spinner.stop()

opts =
  lines: 13
  length: 30
  width: 5
  radius: 31
  rotate: 0
  color: '#fff'
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

window.zIndex = 0
window.DOING_AJAX = false
window.AJAX_ERROR = false

$(document).ready ->
  notice.init()

  $(window).on 'beforeunload', ->
    return 'Existe uma requisição em andamento. Deseja continuar?' if DOING_AJAX

  MuralDeRecados.init()
