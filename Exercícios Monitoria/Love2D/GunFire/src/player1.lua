function player1_load()
	player1 = {
	x =100,
	y = 400,
	speed = 200
	}
end

function player1_update(dt)

end

function player1_draw()
	love.graphics.circle("fill", player1.x, player1.y, 20)
end