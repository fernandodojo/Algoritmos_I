function fase2_load()
	x1, y1 = 0, 0
	xC1, yC1, rC1 =250, 400, 32
	xC2, yC2, rC2 = 550, 400, 32
	bool1, bool2 = false, false
	green = love.graphics.newImage("images/green.png")
	red = love.graphics.newImage("images/red.png")
	lamp1=love.graphics.newImage("images/lampada1.png")
	lamp2=love.graphics.newImage("images/lampada2.png")
	font  = love.graphics.setNewFont("backlash.ttf", 32)
	love.graphics.setFont(font)

end

function fase2_update(dt)
	function love.mousepressed( x, y, button )
		if button == 1 then
			mx = x
			my = y
			if checaToqueC(mx, my, xC1, yC1, rC1) then
				bool1 = boolean(bool1)
			end
			if checaToqueC(mx, my, xC2, yC2, rC2) then
				bool2 = boolean(bool2)
			end
		end
	end
end


function fase2_draw()

	love.graphics.setBackgroundColor(91, 148, 239)
	if bool1 == true then
		love.graphics.draw(green,xC1-32,yC1-32)
	else
		love.graphics.draw(red,xC1-32,yC1-32)
	end

	if bool2 == true then
		love.graphics.draw(green,xC2-32,yC2-32)
	else
		love.graphics.draw(red,xC2-32,yC2-32)
	end



	if  (bool1) and (bool2) then
		love.graphics.draw(lamp2, 336, 36)
	else
		love.graphics.draw(lamp1, 336, 36)
	end


	love.graphics.print(tostring(bool1), 220, 385)
	love.graphics.print(tostring(bool2), 520, 385)
	love.graphics.printf("IF ",100, 385,400)
	love.graphics.printf("AND", 400,385,400)
	love.graphics.printf(" ", 600,385,400)

end
