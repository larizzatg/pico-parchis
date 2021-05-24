pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
--parchis
--by larizzatg
#include game_states.lua
#include menu.lua
#include player_selection.lua
#include dice.lua
#include board.lua
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00dddddddddddd0000dddddddddddd0000dddddddddddd0000dddddddddddd0000dddddddddddd0000dddddddddddd0000000000000000000000000000000000
0d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d000000000000000000000000000000000
0d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d000000000000000000000000000000000
0d666666666666d00d66dd66666666d00d66dd66666666d00d66dd6666dd66d00d66dd6666dd66d00d66dd6666dd66d000000000000000000000000000000000
0d666666666666d00d66dd66666666d00d66dd66666666d00d66dd6666dd66d00d66dd6666dd66d00d66dd6666dd66d000000000000000000000000000000000
0d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d000000000000000000000000000000000
0d66666dd66666d00d666666666666d00d66666dd66666d00d666666666666d00d66666dd66666d00d66dd6666dd66d000000000000000000000000000000000
0d66666dd66666d00d666666666666d00d66666dd66666d00d666666666666d00d66666dd66666d00d66dd6666dd66d000000000000000000000000000000000
0d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d000000000000000000000000000000000
0d666666666666d00d66666666dd66d00d66666666dd66d00d66dd6666dd66d00d66dd6666dd66d00d66dd6666dd66d000000000000000000000000000000000
0d666666666666d00d66666666dd66d00d66666666dd66d00d66dd6666dd66d00d66dd6666dd66d00d66dd6666dd66d000000000000000000000000000000000
0d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d000000000000000000000000000000000
0d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d00d666666666666d000000000000000000000000000000000
00dddddddddddd0000dddddddddddd0000dddddddddddd0000dddddddddddd0000dddddddddddd0000dddddddddddd0000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666666666666666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666666666666666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666666666666666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666611111111666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666666666111cccccccc111666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666666661cccccccccccccc166666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666661cccccccccccccccc16666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6666661cccccccccccccccccc1666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666661ccc111cccccccc111ccc166666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666661cc17771cccccc17771ccc16666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66661ccc17771cccccc17771ccc16666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66661ccc17771cccccc17771ccc16666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66661cccc111cccccccc111cccc16666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6661cccccccccccccccccccccccc1666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6661cccccccccccccccccccccccc1666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6661cccccccccccccccccccccccc1666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6661cccccccccccccccccccccccc1666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6661cccccccccccccccccccccccc1666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6661cccccccccccccccccccccccc1666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66661cccc111cccccccc111cccc16666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66661ccc17771cccccc17771ccc16666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66661ccc17771cccccc17771ccc16666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666661cc17771cccccc17771ccc16666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666661ccc111cccccccc111ccc166666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6666661cccccccccccccccccc1666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666661cccccccccccccccc16666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666666661cccccccccccccc166666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666666666111cccccccc111666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666611111111666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666666666666666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666666666666666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666666666666666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
