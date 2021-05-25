function new_player(number)
  local player = {}
  player.n=number
  player.name="p"..number
  player.house=0
  return player
end