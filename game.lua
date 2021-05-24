-- Manages the game states

-- Every state should have update and draw functions
function _init()
  current_state="menu"
  game_states={
    menu=menu,
    new_game=new_game
  }
  state=game_states[current_state]
end

function _update()
  state=game_states[current_state]
  state:update()
end

function _draw()
  print(state:draw())
end