class ConcentrationGrouplab.Routers.GamesRouter extends Backbone.Router
  initialize: (options) ->
    @games = new ConcentrationGrouplab.Collections.GamesCollection()
    @games.reset options.games

  routes:
    "new"      : "newGame"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newGame: ->
    @view = new ConcentrationGrouplab.Views.Games.NewView(collection: @games)
    $("#games").html(@view.render().el)

  index: ->
    @view = new ConcentrationGrouplab.Views.Games.IndexView(collection: @games)
    $("#games").html(@view.render().el)

  show: (id) ->
    game = @games.get(id)

    @view = new ConcentrationGrouplab.Views.Games.ShowView(model: game)
    $("#games").html(@view.render().el)

  edit: (id) ->
    game = @games.get(id)

    @view = new ConcentrationGrouplab.Views.Games.EditView(model: game)
    $("#games").html(@view.render().el)
