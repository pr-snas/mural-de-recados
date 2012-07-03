class MuralDeRecados.Models.Recado extends Backbone.Model
  sync: (method, model, options) ->
    if method != 'read'
      model.unset('usuario')
    Backbone.sync(method, model, options)
