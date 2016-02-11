Netmask = require('netmask').netmask

module.exports = (robot) ->

 robot.hear /(\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\/\d{1,3}\b)/i, (res) ->
  ip = res.match[1]
  netmask = new netmask(ip)

  out = console.log
  out "Address: #{ip.split('/', 1)[0]}"
  out "Netmask: #{netmask.mask} = #{netmask.bitmask}"
  out "Wildcard: #{netmask.hostmask}"
  out "=>"
  out "Network: #{netmask.base}/#{netmask.bitmask}"
  out "HostMin: #{netmask.first}"
  out "HostMax: #{netmask.last}"
  out "Broadcast: #{netmask.broadcast}"
  out "Hosts/Net: #{netmask.size}"

  out netmask.next()
