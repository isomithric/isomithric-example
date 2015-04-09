Article = require "./models/article"
Layout  = require "./components/layout"

module.exports = Iso.component

  constructor: ->
    @article = new Article(id: m.route.param("id")).get()

  View: class
    
    constructor: ->
      @layout Layout
    
    view: ->
      [
        HEADER @article.title
        DIV    @article.body
      ]
