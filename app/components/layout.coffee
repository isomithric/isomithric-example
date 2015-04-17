m       = require "mithril"
iso     = require("isomithric")(m)
Article = require "./article"

module.exports = iso class
    
  view: ->
    HTML(
      BODY [
        @content
        SCRIPT src: "/client.js"
      ]
    )
