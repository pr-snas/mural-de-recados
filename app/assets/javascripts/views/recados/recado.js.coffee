class MuralDeRecados.Views.Recado extends Backbone.View
  template: JST['recados/recado']

  events:
    'mousedown': 'bringToFront'
    'click .close': 'close'
    'click .info': 'info'

  initialize: ->
    zIndex = @model.get('z_index')
    window.zIndex = zIndex if zIndex > window.zIndex
    $(@el).addClass('note')
    $(@el).css(
      top: @model.get('top')
      left: @model.get('left')
      height: @model.get('height')
      width: @model.get('width')
      zIndex: zIndex
    )
    $(@el).draggable(
      handle: '.pushpin'
      containment: "#recados"
      scroll: false
    )
    $(@el).resizable(
      minHeight: 150
      minWidth: 150
      handles: "se"
      autoHide: true
      containment: "#recados"
    )

  render: =>
    $(@el).append(@template(recado: @model, helpers: @helpers))
    $(@el).find('.inner').css(
      backgroundColor: @model.get('background_color')
      fontFamily: @model.get('font_family')
      color: @model.get('text_color')
    )
    this

  helpers:
    podeEditar: ->
      true

    formataData: (datetime) ->
      true

  bringToFront: (e) ->
    $(@el).css('z-index', ++window.zIndex) if $(@el).css('z-index') < window.zIndex

  close: (e) ->
    $elem = $(@el)
    $elem.css('transform-origin', '0 0')
    $elem.transition({
      opacity: 0,
      skewX: 30,
      skewY: 0,
      scale: 0.1
    }, 300, 'in', ->
      $elem.remove()
    )
    e.preventDefault()

  info: (e) ->
    e.preventDefault()
