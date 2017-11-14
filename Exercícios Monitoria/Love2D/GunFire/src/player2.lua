function player2_load()
	player2 = {
	x =700,
	y = 400,
	speed = 200
	}
end

function player2_update(dt)

end

function player2_draw()
	love.graphics.circle("fill", player2.x, player2.y, 20)	
end
