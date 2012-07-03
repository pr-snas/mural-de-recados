class MuralDeRecados.Views.RecadosIndex extends Backbone.View
  template: JST['recados/index']

  events:
    'click .novo': 'novoRecado'
    
  initialize: ->
    $(@el).addClass('inner')
    @collection.on('add', @acrescentaRecado)

  render: ->
    $(@el).html(@template())
    @collection.each(@acrescentaRecado)
    this

  acrescentaRecado: (recado) =>
    view = new MuralDeRecados.Views.Recado(model: recado)
    @$('#recados').append(view.render().el)

  novoRecado: (e) ->
    defaultWidth = 210
    defaultHeight = 210
    paddingLeftRight = 40
    paddingTopBottom = 86
    h = $('body').height()
    w = $('body').width()
    @collection.create(
      width: defaultWidth
      height: defaultHeight
      left: Math.ceil(Math.random() * (w - paddingLeftRight - defaultWidth))
      top: Math.ceil(Math.random() * (h - paddingTopBottom - defaultHeight))
      pin_class: 'red'
    )
    e.preventDefault()
