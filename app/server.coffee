express = require "express"
iso     = require "isomithric"
routes  = require "./routes"

app = express()
app.use express.static "dist"

new iso.Server app, routes

app.get "/article/:id", (req, res, next) =>
  res.json title: "title", body: "body"

server = app.listen(8000, ->
  console.log "Listening at http://127.0.0.1:#{server.address().port}"
)
