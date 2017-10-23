player = {
	x = 0,
	y = 0,
	xspeed = 0,
	yspeed = 0 

}

function player_draw()
	love.graphics.setColor(255,255,255)
	love.graphics.rectangle("fill", player.x, player.y, 30,60)
end

function player_update(dt)
	player.x = player.x + player.xspeed*dt
	player.y = player.y + player.yspeed*dt

	--gravity
	player.yspeed = player.yspeed + 40


	if player.y + 60 >= 570 then
		player.yspeed = 0
		player.y = 570-60
	end

	if love.keyboard.isDown("left") or love.keyboard.isDown("a")then
		player.xspeed = -200
	elseif love.keyboard.isDown("right") or love.keyboard.isDown("d") then
		player.xspeed = 200
	end

	if not love.keyboard.isDown("left") and not love.keyboard.isDown("a") and not love.keyboard.isDown("right") and not love.keyboard.isDown("d") then
		player.xspeed = 0
	end
end

function player_keypressed(key)
	if key == "space" and player.yspeed == 0 then
		player.yspeed = -700
	end

end