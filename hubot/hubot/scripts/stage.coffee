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
  "http://i.telegraph.co.uk/multimedia/archive/01737/richmond-antlers-b_1737366i.jpg",
  "https://s-media-cache-ak0.pinimg.com/736x/de/8a/6c/de8a6c9ddc385344304181255cdb6b4f.jpg",
  "http://www.inenglish.com/BPSOldWebsite/images/members%20images/Peter%20Basterfield%20ARPS%20DPAGB/album/slides/Red%20Deer%20Stag%20at%20Rut.jpg",
  "http://www.linkmesh2.com/scraper/data/alphacoders/Deer%20Wallpapers/247698.jpg",
  "https://urbangiraffe.com/images/blog/2010/11/stag-body.jpg"
]

module.exports = (robot) ->
  robot.hear /XXXXXXXXXXXXXXXstageXXXXXXXXXXXXXXXXXXXXXX/i, (msg) ->
    msg.send msg.random stages 
