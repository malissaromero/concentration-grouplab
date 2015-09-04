ConcentrationGrouplab.Views.Games ||= {}

class ConcentrationGrouplab.Views.Games.IndexView extends Backbone.View
  template: JST["backbone/templates/games/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (game) =>
    view = new ConcentrationGrouplab.Views.Games.GameView({model : game})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(games: @collection.toJSON() ))
    @addAll()

    return this
