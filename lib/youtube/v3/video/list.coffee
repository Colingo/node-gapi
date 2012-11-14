config = require '../../../config'
{stringify} = require 'querystring'

module.exports = ({id, part, fields}) ->
  queryObject =
    key: config.api.key
    alt: 'json'
  queryObject.id = id if id?
  queryObject.part = part if part?
  queryObject.fields = fields if fields?

  qs = stringify queryObject
  
  config.requestOptions.path = "/youtube/v3/videos?#{qs}"

  return require '../../../execute'