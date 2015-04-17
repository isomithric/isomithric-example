m   = require "mithril"
iso = require("isomithric")(m)

module.exports = iso class

  get: (prop) ->
    url = "http://127.0.0.1:8000/article/#{@id}"
    m.request(method: "GET", url: url).then(prop)
