Iso    = require "isomithric"
routes = require "./routes.coffee"

app = require("express")()
app.use express.static "./dist"

new Iso.Server app, routes
