# TODO:

getRoster = ->
 today = new Date
 day = today.getDay()
 daylist = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
 if daylist[day] == "Sunday"
   T3 = ["@robert.bost", "@robert.davis", "@alexander.wilbourne", "@jerry"]
 else if (daylist[day] == "Monday" or daylist[day] == "Tuesday")
   T3 = ["@brian.boevingloh", "@robert.bost", "@jerry", "@steve.clement", "@robert.davis", "@flip", "@larryh", "@beno.jacob", "@erica.miles", "Wilfred", "@jedimaster", "@alexander.wilbourne"]
 else if daylist[day] == "Wednesday"
   T3 = ["@brian.boevingloh", "@robert.bost", "@jerry", "@steve.clement", "@robert.davis", "@flip", "@larryh", "@beno.jacob", "@erica.miles", "Wilfred", "@jedimaster", "@alexander.wilbourne", "@anne.garcia", "@kim.@kim.sau", "@justin_hopper"]
 else if (daylist[day] == "Thursday" or daylist[day] == "Friday")
   T3 = ["@brian.boevingloh", "@steve.clement", "@flip", "@larryh", "@beno.jacob", "@erica.miles", "Wilfred", "@jedimaster", "@anne.garcia", "@kim.@kim.sau", "@justin_hopper"]
 else if daylist[day] == "Saturday"
   T3 = ["@anne.garcia", "@kim.sau", "@justin_hopper"]
 else
   T3 = ["@brian.boevingloh", "@robert.bost", "@larryh", "@flip", "@kim.sau", "@alexander.wilbourne", "@robert.davis", "@zach.johnson", "@jtown99", "@jerry", "@steve.clement", "Pascasio", "Krull", "@justin_hopper", "Rodgers", "@anne.garcia"]
 return T3

module.exports = (robot) ->

 robot.hear /volunteer/i, (res) ->
  roster = getRoster()
  volunteer = Math.floor Math.random() * (roster.length)
  res.send roster[volunteer] + " you just got Voluntold!"

 robot.hear /whovol/i, (res) ->
  today = new Date
  day = today.getDay()
  daylist = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
  res.send daylist[day] + ": " + getRoster()
