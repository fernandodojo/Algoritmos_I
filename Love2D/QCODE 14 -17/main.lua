io.stdout:setvbuf("no")
love.graphics.setDefaultFilter("nearest", "nearest")

function love.load()
	marioimage = love.graphics.newImage("mario.png")
	titlesetimage = love.graphics.newImage("titleset.png")
	--quad = love.graphics.newQuad( x, y, width, height, sw, sh )
	redbrick = love.graphics.newQuad(0, 0, 32, 32, titlesetimage:getWidth(), titlesetimage:getHeight())
	blackbrick = love.graphics.newQuad(33,0, 32,32, titlesetimage:getWidth(), titlesetimage:getHeight())

	marioquads = {}

	for i=1 , 4 do
		marioquads[i] = love.graphics.newQuad((i-1) * 16, 0, 16 ,16,  marioimage:getWidth(), marioimage:getHeight())
	end
	currentmarioquad = 1
	marioanimatiotimer = 0


	mariolocation = {x = 200, y = 180
	}
		
	scrollfactor = 0	

	bullets = {}


end

function love.draw()
	love.graphics.push()
	love.graphics.translate(-scrollfactor, 0)

	love.graphics.draw(titlesetimage, redbrick, 1000, 200)
	love.graphics.draw(titlesetimage,blackbrick, 300, 200)
	love.graphics.draw(marioimage, marioquads[currentmarioquad], mariolocation.x, mariolocation.y)
	love.graphics.print("TEST",500, 100)
	for i, v in pairs(bullets) do
		love.graphics.rectangle("fill" , v.x, v.y, 10, 10)
	end





	love.graphics.pop()

end

function love.update(dt)
	if  love.keyboard.isDown("d") then
		mariolocation.x = mariolocation.x + 400 * dt

		marioanimatiotimer = marioanimatiotimer + dt

		if marioanimatiotimer > .1 then
			marioanimatiotimer = 0
			currentmarioquad = currentmarioquad + 1
			if currentmarioquad > 4 then
				currentmarioquad = 2
			end
		end
	else
		currentmarioquad = 1
	end


	if mariolocation.x > 400 then
		scrollfactor = mariolocation.x - 400
	end


	for i,v in pairs(bullets) do
		v.x = v.x + 200 * dt
		if v.x > 800 + scrollfactor then
			v.getremoved = true
		end
	end

	for i= #bullets, 1, -1 do
		if bullets[i].getremoved then
			table.remove(bullets, i)
		end
	end

end

function love.keypressed(key)
	if key == "space" then
		table.insert(bullets, {x = mariolocation.x, y=mariolocation.y})
	end
end
function love.mousepressed(x, y, button)
end