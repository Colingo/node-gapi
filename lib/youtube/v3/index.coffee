config = require '../../config'

module.exports =
  video:
    list: (options) ->
      try
        require('./video/list') options
      catch error
        config.error error
