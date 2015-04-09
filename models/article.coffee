module.exports = Iso.model

  get: ->
    value = m.prop({})
    url   = "/article/#{@id}"

    m.request(method: "GET", url: url).then(value)
    
    value
