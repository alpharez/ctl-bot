# TODO:

module.exports = (robot) ->
 today = new Date
 day = today.getDay()
 daylist = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
 if daylist[day] == "Sunday"
   T3 = ["Bost", "Davis", "Wilbourne", "Byerly"]
 else if (daylist[day] == "Monday" or daylist[day] == "Tuesday")
   T3 = ["Boevy", "Bost", "Byerly", "Clement", "Couch", "Davis", "Flip", "Larry", "Beno", "Erica", "Wilfred", "Justin", "Wilbourne"]
 else if daylist[day] == "Wednesday"
   T3 = ["Boevy", "Bost", "Byerly", "Clement", "Couch", "Davis", "Flip", "Larry", "Beno", "Erica", "Wilfred", "Justin", "Wilbourne", "Garcia", "Kim", "Hopper"]
 else if (daylist[day] == "Thursday" or daylist[day] == "Friday")
   T3 = ["Boevy", "Clement", "Couch", "Flip", "Larry", "Beno", "Erica", "Wilfred", "Justin", "Garcia", "Kim", "Hopper"]
 else if daylist[day] == "Saturday"
   T3 = ["Garcia", "Kim", "Hopper"]
 else
   T3 = ["Boevy", "Bost", "Hezel", "Flip", "Sau", "Wilbourne", "Davis", "Johnson", "Brenton", "Byerly", "Clement", "Pascasio", "Krull", "Hopper", "Rodgers", "Couch", "Garcia"]
 volunteer = Math.floor Math.random() * (T3.length)

 robot.hear /volunteer/i, (res) ->

  res.send T3[volunteer]

 robot.hear /whovol/i, (res) ->

  res.send daylist[day] + ": " + T3
