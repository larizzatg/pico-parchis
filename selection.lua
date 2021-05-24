selection = {
  ps={
    { n=1, x=46, h=1 },
    { n=2, x=74, h=2 }
  },
  house_selection={
    { n="green", x=30, y=60, w=36, h=66, c=11 },
    { n="blue", x=50, y=60, w=56, h=66, c=12 },
    { n="orange", x=70, y=60, w=76, h=66, c=9 },
    { n="red", x=90, y=60, w=96, h=66, c=8 },
  }
}

function selection.update(self)
  if btnp(5) then
    -- current_state="new_game"
  end
end

function selection.draw(self)
  cls(7)
  print("pico", 40, 19, 11)
  print("parchis", 59, 19, 12)
  print("start game ❎", 40, 32, 5)
  self:draw_house_selection()
  self:draw_player_selection()
end

function selection.draw_house_selection(self)
  for color, house in pairs(self.house_selection) do 
    rectfill(house.x, house.y, house.w, house.h, house.c)
  end
end

----------------------
-- player selection --
----------------------

function selection.update_player_selection(self, player)
end

function selection.draw_player_selection(self)
  local p = 0
  for player in all(self.ps) do 
    local player_house = self.house_selection[player.h]
      print("p"..player.n, player_house.x, player_house.y - 10, 5)
  end  
end