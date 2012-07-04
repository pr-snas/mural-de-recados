class MuralDeRecados.Models.Recado extends Backbone.Model
  initialize: (attributes, options) ->
    options || (options = {})
    this.bind('sync', this.defaultSuccessHandler)
    this.bind('error', this.defaultErrorHandler)
    this.init && this.init(attributes, options)

  sync: (method, model, options) ->
    notice.display('Carregando...')
    window.DOING_AJAX = true
    if method != 'read'
      model.unset('usuario')
    Backbone.sync(method, model, options)

  defaultSuccessHandler: ->
    notice.hide()
    window.DOING_AJAX = false

  defaultErrorHandler: (model, error) ->
    window.DOING_AJAX = false
    if error.statusText == 'timeout'
      notice.display('Tempo limite esgotado. <a class="retrySync" href="#">Tentar novamente</a>', 'error')
      $('body').delegate 'a.retrySync', 'click', (e) ->
        model.sync()
        e.preventDefault()
    else if error.status == 422
      response = $.parseJSON(error.responseText)
      msg = "Ocorreu alguns erros ao processar sua requisição: <br><ul>"
      for fieldName, fields of response.errors
        msg += "<li><strong>#{fieldName}</strong>: #{fields.join(', ')}</li>"
      msg += "</ul>"
      notice.display(msg, 'error')
      if model.isNew()
        model.destroy()
      else
        model.set(model.previousAttributes())
    else
      notice.display('Ocorreu um erro ao processar sua requisição.', 'error')
