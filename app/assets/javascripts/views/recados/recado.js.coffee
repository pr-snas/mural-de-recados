class MuralDeRecados.Views.Recado extends Backbone.View
  template: JST['recados/recado']

  events:
    'mousedown': 'bringToFront'
    'click .close': 'close'
    'click .info': 'info'
    'keyup .wrap': 'updateContent'

  initialize: ->
    $(@el).data('backbone-view', this)
    @updateHigherZIndex()
    @loadStyle()
    @initDraggable()
    @initResizable()

  render: =>
    category = @model.get('category')
    $(@el).append(@template(recado: @model, helpers: @helpers))
    if category?
      $(@el).find('.inner').css(
        backgroundColor: category.background_color
      )
    this

  helpers:
    podeEditar: ->
      true

    formataData: (datetime) ->
      true

  updateHigherZIndex: =>
    zIndex = @model.get('z_index')
    window.zIndex = zIndex if zIndex > window.zIndex

  loadStyle: =>
    $(@el).addClass('note')
    $(@el).css(
      top: @model.get('top')
      left: @model.get('left')
      height: @model.get('height')
      width: @model.get('width')
      zIndex: @model.get('z_index')
    )

  initDraggable: =>
    $(@el).draggable(
      handle: '.pushpin'
      containment: "#recados"
      scroll: false
      stop: (e, ui) ->
        model = $(this).data('backbone-view').model
        model.set(
          left: ui.position.left
          top: ui.position.top
        )
        model.save()
    )

  initResizable: =>
    $(@el).resizable(
      minHeight: 150
      minWidth: 150
      handles: "se"
      autoHide: true
      containment: "#recados"
      stop: (e, ui) ->
        model = $(this).data('backbone-view').model
        model.set(
          width: $(this).width()
          height: $(this).height()
        )
        model.save()
    )

  bringToFront: (e) ->
    $(@el).css('z-index', ++window.zIndex) if $(@el).css('z-index') < window.zIndex

  close: (e) =>
    model = @model
    $elem = $(@el)
    $elem.css('transform-origin', '0 0')
    $elem.transition({
      opacity: 0,
      skewX: 30,
      skewY: 0,
      scale: 0.1
    }, 300, 'in', ->
      model.destroy()
    )
    e.preventDefault()

  info: (e) ->
    $(@el).find('.inner').transition({
      perspective: $(@el).width()
      rotateY: -180
    }, 800, 'out')
    e.preventDefault()

  updateContent: (e) =>
    @model.set('conteudo', $(e.target).html())
    @model.save()
