class MuralDeRecados.Views.RecadosIndex extends Backbone.View
  template: JST['recados/index']

  events:
    'mousedown .note': 'bringToFront'
    'click .novo': 'novoRecado'
    
  initialize: (attr) ->
    @categorias = attr.categorias
    $(@el).addClass('inner')
    @collection.on('add', @acrescentaRecado)

  render: ->
    $(@el).html(@template(categorias: @categorias))
    @collection.each(@acrescentaRecado)
    this

  acrescentaRecado: (recado) =>
    view = new MuralDeRecados.Views.Recado(model: recado)
    @$('#recados').append(view.render().el)
    recado.bind 'destroy', -> view.remove()

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
      z_index: ++window.zIndex
    )
    e.preventDefault()
    
  bringToFront: (e) ->
    $target = $(e.target)
    $target = $target.parents('.note') if $target.parents('.note')
    $target.css('z-index', ++window.zIndex) if $target.css('z-index') < window.zIndex

