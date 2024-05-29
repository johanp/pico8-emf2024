pico-8 cartridge // http://www.pico-8.com
version 41
__lua__

function _init()
	
	-- player
	pl = {
	 x = 64,
	 y = 64,
	 mirror = false
	}
	
end


function _update()

 -- get player input
 if btn(⬆️) then
  pl.y -= 1
 end
 if btn(⬇️) then
  pl.y += 1
 end
 
 if btn(⬅️) then
  pl.x -= 1
  pl.mirror = true
 end
 if btn(➡️) then
  pl.x += 1
  pl.mirror = false
 end
 
end


function _draw()
	-- clear screen
	cls(3)
	
	-- draw map
	map()
	
	-- draw player
	spr(1, pl.x, pl.y, 1, 1, pl.mirror)
	
end
__gfx__
0000000000770770000000000000000000000000000000000000000000000000000000000000000000000000000000000000d677777700000000999999920000
000000000077077000000000000000000000000000000000000000000000000000000000000000000000000000000000000d5d67777770000009999999424000
00700700007707700000000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd6777777000009999999424000
0007700000777770000000000000000000000000000000000000000000000000000000000000000000000000000000000ddd5ddd677777700099999994424400
0007700000717eee00000000000000000000000000000000000000000000000000000000000000000000000000000000ddddddddd66666600099999994424400
0070070000777eee00000000000000000000000000000000000000000000000000000000000000000000000000000000dddd5dddd66666600999999944424440
000000000777770000000000000000000000000000000000000000000000000000000000000000000000000000000000ddddddddd66666600999999944424040
000000000070070000000000000000000000000000000000000000000000000000000000000000000000000000000000dddd50ddd60606609099099444420044
0000090000000000000900000000000000000000000000000000000000000000000000000000000000000000000000000000ccccccc500000000188888880000
000a0000000a00000000000000000a000000000000000000000000000000000000000000000000000000000000000000000cccccccd5d0000002128888888000
0007a0000000000000000a00000000000000000000000000000000000000000000000000000000000000000000000000000cccccccd5d0000002128888888000
00a77a00000aa70000000000000aa000000000000000000000000000000000000000000000000000000000000000000000cccccccdd5dd000022122888888800
00a77a0000a77700000aa00000a77a00000000000000000000000000000000000000000000000000000000000000000000cccccccdd5dd000022122888888800
000aa00000a77a0000a77a0000a77a0000000000000000000000000000000000000000000000000000000000000000000cccccccddd5ddd00222122288888880
00000000000aa00000a77a00000aa00000000000000000000000000000000000000000000000000000000000000000000ccc0cccddd5ddd00222122288888880
0000000000000000000aa000000000000000000000000000000000000000000000000000000000000000000000000000cccc00cdddd5d0dd2222120228880808
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b00000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb0000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b00bb000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b0bb00000000b0
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb00bb0
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bb0b00
__map__
00000000000000002f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000e0f00000000000000000000002e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000002f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000e0f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
002e000000000000000000001e1f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000c0d0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000e0f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000002e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000002f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000001c1d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2e0000001e1f00000e0f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000002f00000000000c0d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00002f0000000000000000001e1f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000e0f0000002e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000002e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000