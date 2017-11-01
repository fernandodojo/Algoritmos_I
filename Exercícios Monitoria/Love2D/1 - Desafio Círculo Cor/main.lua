io.stdout:setvbuf("no")


require "codes/circle"

function love.load()
	circle = {}
	circle.x = 400
	circle.y = 300
	rad = 100

	mx = 0
	my = 0
	--print(mx, my)

end

function love.update(dt)
	checaToqueC(mx,my,circle.x, circle.y, rad)





end

function love.draw()
	if checaToqueC(mx,my,circle.x, circle.y, rad)  then
		love.graphics.setColor(255,0,0)
	else
		love.graphics.setColor(0, 255,0 )
	end
	love.graphics.circle("fill", circle.x, circle.y, rad)


	love.graphics.print(mx, 0,0)
	love.graphics.print(my, 0,10)

end




function love.mousepressed( x, y, button )
	if button == 1 then
		mx = x
		my = y
	end

end


