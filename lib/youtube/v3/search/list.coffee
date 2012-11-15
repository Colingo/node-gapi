config = require '../../../config'
{stringify} = require 'querystring'

module.exports = ({part , q , relatedToVideo , maxResults , order , published , type , videoCaption , videoDefinition , videoDimension , videoDuration , videoLicense , topicId , pageToken }) ->
  queryObject =
    key: config.api.key
    alt: 'json'
  queryObject.part = part if part?
  queryObject.q = q if q?
  queryObject.relatedToVideo = relatedToVideo if relatedToVideo?
  queryObject.maxResults = maxResults if maxResults?
  queryObject.order = order if order?
  queryObject.published = published if published?
  queryObject.type = type if type?
  queryObject.videoCaption = videoCaption if videoCaption?
  queryObject.videoDefinition = videoDefinition if videoDefinition?
  queryObject.videoDimension = videoDimension if videoDimension?
  queryObject.videoDuration = videoDuration if videoDuration?
  queryObject.videoLicense = videoLicense if videoLicense?
  queryObject.topicId = topicId if topicId?
  queryObject.pageToken = pageToken if pageToken?

  qs = stringify queryObject
  
  config.requestOptions.path = "/youtube/v3/search?#{qs}"

  return require '../../../execute'