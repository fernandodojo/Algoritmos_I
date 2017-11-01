io.stdout:setvbuf("no")
--Icon made by [https://www.flaticon.com/authors/freepik] from www.flaticon.com

require "codes/circle"
require "codes/player"

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end

function love.load()
	player_load()
end

function love.update(dt)
	player_update(dt)
end

function love.draw()
	player_draw()
end


function love.mousepressed( x, y, button )
	player_mousepressed( x, y, button )
end

