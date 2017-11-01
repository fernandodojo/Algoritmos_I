--http://www.iconsdb.com/orange-icons/circle-icon.html

io.stdout:setvbuf("no")
io.stdout:setvbuf "no"


require "function/boolean"
require "function/circle"
require "fases/fase1"
require "fases/fase2"

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end

function love.load()
	gamestate = "fase1"
	fase1_load()
end

function love.update(dt)
	if gamestate == "fase1" then
		fase1_update(dt)
	elseif gamestate == "fase2" then
		fase2_update(dt)
	elseif gamestate == "fase3" then
		fase3_update(dt)
	elseif gamestate == "fase4" then
		fase2_update(dt)
	end
end

function love.draw()
	if gamestate == "fase1" then
		fase1_draw()
	elseif gamestate == "fase2" then
		fase2_draw()
	elseif gamestate == "fase3" then
		fase3_draw()
	elseif gamestate == "fase4" then
		fase2_draw()
	end
end
