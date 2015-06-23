# Description
#   A hubot script for goo.gl url shortener API
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Truong Nguyen <constantx@gmail.com>

module.exports = (robot) ->
  robot.respond /hello/, (res) ->
    res.reply "hello!"

  robot.hear /orly/, ->
    res.send "yarly"
