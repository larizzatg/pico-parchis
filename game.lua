function _init()
  create_state_machine()
end

function _update()
  set_state()
  state:update()
end

function _draw()
  state:draw()
end