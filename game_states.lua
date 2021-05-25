-- Manages the game states

function create_state_machine()
  current_state="player_selection"
  game_states={
    menu=menu,
    player_selection=player_selection
  }
  state=game_states[current_state]
end

function set_state()
  state=game_states[current_state]
end