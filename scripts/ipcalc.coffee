Netmask = require('netmask').Netmask

module.exports = (robot) ->

 robot.hear /(\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\/\d{1,3}\b)/i, (res) ->
  ip = res.match[1]
  netmask = new Netmask(ip)

  res.send "Address: #{ip.split('/', 1)[0]} Network: #{netmask.base Mask: #{netmask.mask} / #{netmask.bitmask} "
  res.send "Min: #{netmask.first} Max: #{netmask.last} Broadcast: #{netmask.broadcast} Numhosts: #{netmask.size}"
