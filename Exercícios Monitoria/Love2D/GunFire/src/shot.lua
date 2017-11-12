function shot_load()
	bullets1 = {}
	

	bullets2 = {}
	angle1 = 0
	angle2 = 0

end

function shot_update(dt)
	for i, v in ipairs(bullets1) do
		v.x = v.x + v.dx * dt
		v.y = v.y + v.dy * dt
		v.dy = v.dy + 1
		

		if v.x> 700 or v.x < 100 then
			table.remove(bullets1, i)
		end

	end

	for i, v in ipairs (bullets2) do
		v.x = v.x + v.dx * dt
		v.y = v.y + v.dy * dt
		v.dy = v.dy + 1

		if v.x> 700 or v.x < 100 then
			table.remove(bullets2, i)
		end
	end	
	

end

function shot_draw()
	for i, v in ipairs(bullets1) do
		love.graphics.rectangle("fill", v.x, v.y, 5, 5)
	end
	for i,v in ipairs(bullets2) do
		love.graphics.rectangle("fill", v.x, v.y, 5, 5)
	end

	love.graphics.print(angle1, 0, 60)
	love.graphics.print(angle2, 0, 80)
end

function shot_mousepressed(x, y, button)
	mx = x
	my = y

	angle1 = math.atan2(my-player1.y , mx - player1.x )
	angle2 = math.atan2(my-player2.y , mx - player2.x )

	direction1x = 200 * math.cos(angle1)
	direction1y = 200 * math.sin(angle1)

	direction2x = 200 * math.cos(angle2)
	direction2y = 200 * math.sin(angle2)

	if button == 1 then
		table.insert(bullets1, {x = player1.x, y = player1.y, dx = direction1x , dy = direction1y})
	end
	if button == 1 then
		table.insert(bullets2, {x = player2.x, y = player2.y , dx = direction2x, dy = direction2y})
	end
end