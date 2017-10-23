

function menu_load()
	love.graphics.setBackgroundColor(0,150,255)

	menubutton={}
	menubutton[1] = {text="Start Game", x = 200, y = 300, execute = startgame}
	menubutton[2] = {text="Exit Game", x = 200, y = 400, execute = exitgame}

end

function menu_draw()

	love.graphics.setFont(titlefonte)
	love.graphics.printf("GUN FIRE",200, 100,400,"center")

	love.graphics.setFont(buttonfont)
	for i, v in pairs(menubutton) do
		love.graphics.printf(v.text, v.x, v.y, 400, "center")
	end


end

function menu_update(dt)

end


function menu_mousepressed(x,y,button)
	for i, v in pairs(menubutton) do
		if x > v.x and x < v.x + 400 and y > v.y and y < v.y + 100 then
			v.execute()
		end
	end

end

function startgame()
	gamestate = "game"
	game_load()
end

function exitgame()
	love.event.push("quit")
end