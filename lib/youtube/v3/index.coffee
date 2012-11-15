config = require '../../config'

module.exports =
  video:
    list: (options) ->
      try
        require('./video/list') options
      catch error
        config.error error
  search:
    list: (options) ->
      try
        require('./search/list') options
      catch error
        config.error error
        
        