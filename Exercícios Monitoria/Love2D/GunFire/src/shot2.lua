function shot2_load()
	bullets2 = {}
	angle2 = 0
	shotnumber = 0

end

function shot2_update(dt)
	for i, v in ipairs (bullets2) do
		v.x = v.x + v.dx * dt
		v.y = v.y + v.dy * dt
		v.dy = v.dy + 5

		if v.x> 790 or v.x < 10 or v.y > 600 or circlecolision(player1.x, player1.y, v.x, v.y, 18) then
			gamestate = "player1"
			table.remove(bullets2, i)
			shotnumber = shotnumber - 1
		end
	end


end

function shot2_draw()
	for i,v in ipairs(bullets2) do
		love.graphics.circle("fill", v.x, v.y, 3)
		if circlecolision(player1.x, player1.y, v.x, v.y, 20) then
			love.graphics.print("ok", 400, 0)
			--gamestate = "player1"
		end
	end

	love.graphics.print(angle1, 0, 60)
	love.graphics.print(angle2, 0, 80)
end

function shot2_mousepressed(x, y, button)
	mx = x
	my = y

	angle2 = math.atan2(my-player2.y , mx - player2.x )

	direction2x = 400 * math.cos(angle2)
	direction2y = 400 * math.sin(angle2)

	if button == 1 and shotnumber == 0 then
		table.insert(bullets2, {x = player2.x, y = player2.y , dx = direction2x, dy = direction2y})
		--gamestate = "player1"
		shotnumber = shotnumber + 1


	end
end
