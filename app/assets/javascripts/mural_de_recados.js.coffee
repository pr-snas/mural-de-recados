window.MuralDeRecados =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    window.zIndex = 0
    new MuralDeRecados.Routers.Recados()
    Backbone.history.start()

$(document).ready ->
  MuralDeRecados.init()
