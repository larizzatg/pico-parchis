function _init()
  -- Create two players
  players={}
  add(players, new_player(1))
  add(players, new_player(2))

  -- Create four houses
  houses={}
  add(houses, { name="green", c=11, p=0 })
  add(houses, { name="blue", c=12, p=0 })
  add(houses, { name="orange", c=9, p=0 })
  add(houses, { name="red", c=8, p=0 })
  -- Create state machine to game states
  create_state_machine()
end

function _update()
  set_state()
  state:update()
end

function _draw()
  state:draw()
end