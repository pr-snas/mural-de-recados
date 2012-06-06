class MuralDeRecados.Routers.Recados extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new MuralDeRecados.Collections.Recados()
    @collection.reset($('#container').data('recados'))

  index: ->
    view = new MuralDeRecados.Views.RecadosIndex(collection: @collection)
    $('#container').html(view.render().el)
