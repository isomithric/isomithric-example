m       = require "mithril"
iso     = require("isomithric")(m)

module.exports = iso class
  
  @LayoutView: require "./layout"
  
  view: ->
    content =
      [
        HEADER @article().title
        DIV    @article().body
      ]

    if @server
      @layoutView(content: content)
    else
      content
