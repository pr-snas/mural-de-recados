class MuralDeRecados.Routers.Recados extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @wrapper = $('#wrapper')
    @collection = new MuralDeRecados.Collections.Recados()
    @categorias = new MuralDeRecados.Collections.Categorias()
    @collection.reset(@wrapper.data('recados'))
    @categorias.reset(@wrapper.data('categorias'))

  index: ->
    view = new MuralDeRecados.Views.RecadosIndex(
      collection: @collection
      categorias: @categorias
    )
    @wrapper.html(view.render().el)
