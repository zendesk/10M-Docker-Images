# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   it's a trap - Display an Admiral Ackbar piece of wonder
#
# Author:
#   brilliantfantastic

stages = [
  "http://www.dvarhamefarsem.co.il/Hot/130573/Rashit.jpg"
  "https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xfp1/t31.0-8/10272762_291185964390175_423323458311162901_o.jpg?dl=1"
]

module.exports = (robot) ->
  robot.hear /hack/i, (msg) ->
    msg.send msg.random stages 
