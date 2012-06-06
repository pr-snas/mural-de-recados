class MuralDeRecados.Views.RecadosIndex extends Backbone.View
  template: JST['recados/index']

  initialize: ->
    $(@el).addClass('row-fluid')

  render: ->
    $(@el).html(@template())
    @collection.each(@acrescentaRecado)
    this

  acrescentaRecado: (recado) =>
    view = new MuralDeRecados.Views.Recado(model: recado)
    @$('#recados').append(view.render().el)
