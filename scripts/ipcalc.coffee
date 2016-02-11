Netmask = require('netmask').Netmask

module.exports = (robot) ->

 robot.hear /(\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\/\d{1,3}\b)/i, (res) ->
  ip = res.match[1]
  netmask = new Netmask(ip)

  res.send console.log
  res.send "Address: #{ip.split('/', 1)[0]}"
  res.send "Netmask: #{netmask.mask} = #{netmask.bitmask}"
  res.send "Wildcard: #{netmask.hostmask}"
  res.send "Network: #{netmask.base}/#{netmask.bitmask}"
  res.send "HostMin: #{netmask.first}"
  res.send "HostMax: #{netmask.last}"
  res.send "Broadcast: #{netmask.broadcast}"
  res.send "Hosts/Net: #{netmask.size}"

