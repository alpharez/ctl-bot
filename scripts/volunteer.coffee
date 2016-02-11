
module.exports = (robot) ->

 robot.hear /volunteer/i, (res) ->
  T3 = ["Boevy", "Bost", "Hezel", "Flip", "Sau", "Wilbourne", "Davis", "Johnson", "Brenton", "Byerly", "Clement", "Pascasio", "Krull", "Hopper", "Rodgers"]
  volunteer = Math.floor Math.random() * (T3.length)
  res.send T3[volunteer]
