player_selection={
  selected_player=1,
  selected_house=1,
  available_houses={}
}

function player_selection.update(self)
  self:update_available_houses()
  self:choose_house()
end

function player_selection.choose_house(self)
  if btnp(1) and self.selected_house < 4 then 
    self.selected_house += 1
  end

  if btnp(0) and self.selected_house > 1 then 
    self.selected_house -= 1
  end

  if btnp(5) then
    players[self.selected_player].house = self.selected_house
 
    self.selected_player+=1
    self.selected_house=1
  end
end

function player_selection.update_available_houses(self)
  local available_houses={1, 2, 3, 4}
  for i=1, #players do 
    if players[i].house > 0 then
      del(available_houses, players[i].house)
    end
  end
  self.available_houses = available_houses
end

function player_selection.draw(self)
  cls(7)
  print("pico", 40, 19, 11)
  print("parchis", 59, 19, 12)
  line(40, 25, 85, 25, 9)
  line(40, 26, 85, 26, 8)


  print("choose house (❎)", 32, 35, 5)

  
  -- print houses
  local house_size=6
  local house_ix=10
  local house_y=60
  local house_m=20
  for i=1, #houses do
    rectfill(house_ix+(house_m*i), house_y, house_ix+(house_m*i)+house_size, house_y+house_size, houses[i].c)
  end

  if self.selected_player > 0 and self.selected_house > 0 then 
      print(players[self.selected_player].name, house_ix+(house_m*self.selected_house), house_y-8, 5)
  end

  for i=1, #players do 
    if players[i].house > 0 then 
      print(players[i].name, house_ix+(house_m*players[i].house), house_y-8, houses[players[i].house].c)
    end
  end

  
  -- print("p1", house_ix+(house_m*1), house_y-8, 5)
  -- print players
  -- local x=48
  -- for i=1, #players do
  --   local y = 20+(i*15)
  --   print(players[i].name, x, y, 5)
  --   print("<", x+16, y, 5)
  --   rect(x+20, y, x+24, y+4, 5)
  --   print(">", x+26, y, 5)

  --   if i == self.selected_player then
  --     line(x-1, y+6, x+7, y+6, 10)
  --   end
  -- end
end