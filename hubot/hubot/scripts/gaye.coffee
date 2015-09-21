# Description:
#   Load a random Grumpy Cat from an array of images.
#   Based on pugme.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot grumpycat me - Receive a Grumpy Cat
#   hubot grumpycat bomb N - get N Grumpy Cats
#
# Author:
#   trey

imgs = [
  "http://upload.wikimedia.org/wikipedia/commons/3/3a/Marvin_Gaye_%281973%29.png",
  "http://eil.com/images/main/Marvin-Gaye-Sanctified-Lady-304552.jpg", 
  "http://www.rugusavay.com/wp-content/uploads/2012/11/Marvin-Gaye-Quotes-5.jpg", 
  "http://performingsongwriter.com/wp-content/uploads/2011/04/marvin-gaye.jpg" 
]

module.exports = (robot) ->
  robot.respond /gaye/i, (msg) ->
    msg.send imgs[Math.floor(Math.random()*imgs.length)]

  robot.respond /gaye/i, (msg) ->
    msg.send "What's going on?"
