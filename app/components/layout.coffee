iso     = require "isomithric"
Article = require "./article"

module.exports = iso class
    
  view: ->
    HTML(
      BODY [
        @content
        SCRIPT src: "/client.js"
      ]
    )
