m   = require "mithril"
iso = require("isomithric")(m)

module.exports = iso class
    
  view: ->
    HTML(
      BODY [
        @content
        SCRIPT src: "/client.js"
      ]
    )
