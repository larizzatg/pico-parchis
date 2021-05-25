player_selection={
  selected_player=1,
  selected_house=1,
  finished=false,
  house_pos=1
}

function player_selection.update(self)
  if not self.finished then 
    self:choose_house()
  end 
end

function player_selection.choose_house(self)
  local available_houses={}
  for i=1, #houses do 
    if houses[i].p == 0 then
      add(available_houses, i)
    end
  end

  if btnp(1) and self.house_pos < #available_houses then 
    self.house_pos += 1
  end

  if btnp(0) and self.house_pos > 1 then 
    self.house_pos -= 1
  end
  self.selected_house = available_houses[self.house_pos]

  if btnp(5) then
    players[self.selected_player].house = self.selected_house
    houses[self.selected_house].p = self.selected_player
    if self.selected_player < #players then      
      self.selected_player+=1
      self.selected_house=0
      self.house_pos = 1
    else
      self.finished = true
    end
  end
end

function player_selection.draw(self)
  cls(7)
  print("pico", 40, 19, 11)
  print("parchis", 59, 19, 12)
  line(40, 25, 85, 25, 9)
  line(40, 26, 85, 26, 8)

  if self.finished then 
    print("start game (❎)", 34, 35, 5)
  else 
    print("choose house (❎)", 32, 35, 5)
  end
  
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
end