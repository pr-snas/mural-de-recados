window.notice =
  init: ->
    $('body').delegate '.flash-notice', 'click', ->
      window.notice.hide()
  display: (str, type) ->
    $elem = $('.flash-notice .alert')
    $elem.html(str)
    $elem.parent().show()
    clearTimeout(this.timeout)
    if type?
      $elem.attr('class', 'alert alert-' + type)
      this.timeout = setTimeout ->
        window.notice.hide()
      , 10000
  hide: ->
    $elem = $('.flash-notice .alert')
    $elem.attr('class', 'alert')
    $elem.parent().hide()
