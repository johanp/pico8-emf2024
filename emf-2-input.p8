pico-8 cartridge // http://www.pico-8.com
version 41
__lua__

function _init()
	
	-- player
	pl = {
	 x = 64,
	 y = 64
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
 end
 if btn(➡️) then
  pl.x += 1
 end
 
end


function _draw()
	-- clear screen
	cls()
	
	-- draw player
	circ(pl.x, pl.y, 3, 12)
	
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000