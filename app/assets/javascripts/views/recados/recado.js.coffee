class MuralDeRecados.Views.Recado extends Backbone.View
  template: JST['recados/recado']

  events:
    'click .close': 'close'
    'click .settings': 'settings'
    'click .return': 'return'
    'keyup .wrap': 'updateContent'

  initialize: (attr) ->
    @categorias = attr.categorias
    @$el.data('backbone-view', this)
    @updateHigherZIndex()
    @loadStyle()
    @initDraggable()
    @initResizable()

  render: =>
    @$el.append(@template(recado: @model, owner: @isOwner(), categorias: @categorias))
    @$el.find('.info, .settings, .return').tooltip()
    this

  isOwner: ->
    true

  updateHigherZIndex: =>
    zIndex = @model.get('z_index')
    window.zIndex = zIndex if zIndex > window.zIndex

  loadStyle: =>
    @$el.addClass('note')
    @$el.css(
      top: @model.get('top')
      left: @model.get('left')
      height: @model.get('height')
      width: @model.get('width')
      zIndex: @model.get('z_index')
    )
    cat = @model.get('category')
    @$el.css('background-color', cat.background_color) if cat?

  initDraggable: =>
    @$el.draggable(
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
    @$el.resizable(
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

  close: (e) =>
    model = @model
    @$el.css('transform-origin', '0 0')
    @$el.transition({
      opacity: 0,
      skewX: 30,
      skewY: 0,
      scale: 0.1
    }, 300, 'in', ->
      model.destroy()
    )
    e.preventDefault()

  settings: (e) ->
    $el = @$el
    $el.find('.settings').tooltip('hide')
    $el.find('.front').fadeOut 'fast', ->
      $el.find('.back').fadeIn('fast')
    e.preventDefault()

  return: (e) ->
    $el = @$el
    $el.find('.return').tooltip('hide')
    $el.find('.back').fadeOut 'fast', ->
      $el.find('.front').fadeIn('fast')
    e.preventDefault()

  updateContent: (e) =>
    timeout = window.updateContentTimeout
    clearTimeout timeout if timeout
    @model.set('conteudo', $(e.target).html())
    window.updateContentTimeout = setTimeout =>
      @model.save()
    , 200
