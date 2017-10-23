io.stdout:setvbuf("no")
io.stdout:setvbuf "no"
love.graphics.setDefaultFilter("nearest", "nearest")

require "menu"
require "game"
require "player"

function love.load()
	gamestate = "menu"
	menu_load()
	titlefonte  = love.graphics.setNewFont("backlash.ttf", 50)
	love.graphics.setFont(titlefonte)
	buttonfont  = love.graphics.setNewFont("backlash.ttf", 30)
end



function love.draw()
	if gamestate == "menu" then
		menu_draw()
	elseif gamestate =="game" then
		game_draw()
	end
end

function love.update(dt)
	if gamestate == "menu" then
		menu_update(dt)
	elseif gamestate =="game" then
		game_update(dt)
	end

end


function love.mousepressed(x,y,button)
	if gamestate == "menu" then
		menu_mousepressed(x,y,button)
	elseif gamestate =="game" then
		game_load()
	end
end

function love.keypressed(key)
	if gamestate == "game" then
		game_keypressed(key)
	end
end

