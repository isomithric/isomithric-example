iso     = require "isomithric"
Article = require "../models/article"
Layout  = require "./layout"
m       = require "mithril"

module.exports = iso class

  constructor: ->
    @article = m.prop({})
    @global.promises.push(
      new Article(id: @param("id")).get(@article)
    )

  view: ->
    @body_view(article: @article)

  @BodyView: iso class
    
    @LayoutView: Layout
    
    view: ->
      content =
        [
          HEADER @article().title
          DIV    @article().body
        ]

      if @global.server
        @layout_view(content: content)
      else
        content
