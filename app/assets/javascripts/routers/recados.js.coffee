class MuralDeRecados.Routers.Recados extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new MuralDeRecados.Collections.Recados()
    @collection.reset($('#wrapper').data('recados'))

  index: ->
    view = new MuralDeRecados.Views.RecadosIndex(collection: @collection)
    $('#wrapper').html(view.render().el)
