class ConcentrationGrouplab.Models.Game extends Backbone.Model
  paramRoot: 'game'

  defaults:
    [property_name: null

class ConcentrationGrouplab.Collections.GamesCollection extends Backbone.Collection
  model: ConcentrationGrouplab.Models.Game
  url: '/games'
