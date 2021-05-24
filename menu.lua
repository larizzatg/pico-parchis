---------------------------------------------
-- menu: initial game
---------------------------------------------
menu={
  name="pico parchis",
  anim=0,
  colors={11, 12}
}

function menu.update(self)
  -- self:animate()
  self:start()
end

function menu.start(self) 
  if btnp(5) then
    current_state="new_game"
  end
end

function menu.animate(self) 
  local calm = {11, 12}
  local warm = {8, 9}
  self.anim += 1
  if (self.anim > 30) then
    self.anim=0
    --toggle colors
    if self.colors[1] == calm[1]  then
      self.colors = warm
    else 
      self.colors = calm
    end
  end
end

function menu.draw(self) 
  cls(7)
  draw_p(40, 16, self.colors[1])
  draw_p(58, 26, self.colors[2])
  print("start new game ❎", 30, 80, 5)
end

function draw_p(x, y, color, s)
  local s = s or 8
  rectfill(x, y, x+(s*3), y+s, color)
  rectfill(x, y+s, x+s, (y+s)+(s*4), color)
  rectfill(x+(s*2), y+s, x+(s*3), (y+s)+(s*2), color)
  rectfill(x+s, y+(s*2), x+(8*2), y+(8*3), color)
end