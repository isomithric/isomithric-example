Article = require "./components/article"

module.exports = Iso.component

  View: class
    
    view: ->
      HTML
        BODY [
          @content
          SCRIPT src: "/client.js"
        ]
