m   = require "mithril"
iso = require("isomithric")(m)

module.exports = iso class

  @ArticleModel: require "../models/article"
  @BodyView:     require "../views/body"

  constructor: ->
    @article = m.prop({})
    @articleModel(id: @param("id"))
      .get(@article)
      .then -> m.redraw true

  view: ->
    @bodyView(article: @article)
