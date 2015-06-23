# Description
#   A hubot script for goo.gl url shortener API
#
# Configuration:
#   GOOGLE_API_KEY
#
# Commands:
#   hubot shorten {url} - shorten a long url
#
# Author:
#   Truong Nguyen <constantx@gmail.com>

google = require('googleapis')
googleAPIKey = process.env.GOOGLE_API_KEY
urlshortener = google.urlshortener
  version: 'v1'
  auth: googleAPIKey

module.exports = (robot) ->

  unless googleAPIKey?
    robot.logger.warning 'Need GOOGLE_API_KEY'
    return

  robot.respond /shorten (.*)/i, (msg) ->
    url = msg.match[1]
    console.log('shortening url', url);
    urlshortener.url.insert { resource: longUrl: url }, (err, result) ->
      if (err)
        return msg.send "oh no, got an error: #{err.msg}"

      return msg.send "here it is #{result.id}"

  # @todo get long URL from shortened URL
  # @todo get stat for a shortened URL
