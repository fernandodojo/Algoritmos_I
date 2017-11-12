function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end

function love.load()
	mx = 0
	my = 0

	player1 = {
	x =100,
	y = 400,
	speed = 75
	}

	player2 = {
	x =700,
	y = 400,
	speed = 200
	}

	bullets1 = { --x = char1.x,
	--y = char1.y,
	--speedx = 800,
	--speedy = 0
	}

	bullets2 = { x = player2.x,
	y = player2.y,
	speedx = 800,
	speedy = 0
	}



end

function love.update(dt)
	if love.keyboard.isDown("a") and player1.x > 0 then
		player1.x = player1.x - player1.speed * dt
	end
	if love.keyboard.isDown("d") and player1.x < 800 then
		player1.x = player1.x + player1.speed * dt
	end
	if love.keyboard.isDown("left") and player2.x > 0 then
		player2.x = player2.x - player2.speed * dt
	end
	if love.keyboard.isDown("right") and player2.x < 800 then
		player2.x = player2.x + player2.speed * dt
	end

		

	for i, v in ipairs(bullets1) do
		v.x = v.x + v.speedx * dt
	end

end

function love.draw()
	love.graphics.rectangle("fill", player1.x, player1.y, 20, 40)
	love.graphics.rectangle("fill", player2.x, player2.y, 20, 40)
	love.graphics.print(mx, 0,10)
	love.graphics.print(my, 0,40)


	

	for i, v in ipairs(bullets1) do
		love.graphics.rectangle("fill", v.x, v.y, 5, 5)
	end

end

	function love.mousepressed(x, y, button)
		mx = x
		my = y
		if button == 1 then
			table.insert(bullets1, {x = player1.x, y = player1.y, speedx = 400})
		end
		
	end




