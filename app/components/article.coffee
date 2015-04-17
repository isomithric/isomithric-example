m   = require "mithril"
iso = require("isomithric")(m)

module.exports = iso class

  @ArticleModel: require "../models/article"
  @BodyView:     require "../views/body"

  constructor: ->
    @article = m.prop({})

    @global.promises.push(
      @article_model(id: @param("id"))
        .get(@article)
        .then -> m.redraw true
    )

  view: ->
    @body_view(article: @article)
