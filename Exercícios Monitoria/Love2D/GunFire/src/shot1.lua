function shot1_load()
	bullets1 = {}
	angle1 = 0

end

function shot1_update(dt)
	for i, v in ipairs(bullets1) do
		v.x = v.x + v.dx * dt
		v.y = v.y + v.dy * dt
		v.dy = v.dy + 1
		

		if v.x> 790 or v.x < 10 or v.y > 600 or circlecolision(player2.x, player2.y, v.x, v.y, 18) then
			gamestate = "player2"
			table.remove(bullets1, i)
		end

	end

end

function shot1_draw()
	for i, v in ipairs(bullets1) do
		love.graphics.circle("fill", v.x, v.y, 3)
		if circlecolision(player2.x, player2.y, v.x, v.y, 20) then
			love.graphics.print("ok2", 400, 40)
			--gamestate = "player2"
		end
	end

	love.graphics.print(angle1, 0, 60)
	love.graphics.print(angle2, 0, 80)
end

function shot1_mousepressed(x, y, button)
	mx = x
	my = y

	angle1 = math.atan2(my-player1.y , mx - player1.x )
	
	direction1x = 200 * math.cos(angle1)
	direction1y = 200 * math.sin(angle1)

	if button == 1 then
		table.insert(bullets1, {x = player1.x, y = player1.y, dx = direction1x , dy = direction1y})
		--gamestate = "player2"		
	end
end