m      = require "mithril"
iso    = require("isomithric")(m)
routes = require "./routes"

new iso.Client routes
