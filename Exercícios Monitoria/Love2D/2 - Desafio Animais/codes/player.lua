function player_load()


	dog = {}
	dog.x = 200
	dog.y = 200
	dog.rad = 32
	dog.img=love.graphics.newImage("graphics/bulldog.png")
	dog.sound = love.audio.newSource("sounds/Dog bark.wav", "static")


	cat = {}
	cat.x = 400
	cat.y = 200
	cat.rad = 32
	cat.img=love.graphics.newImage("graphics/cat.png")
	cat.sound = love.audio.newSource("sounds/Kitten.mp3", "static")


	cow = {}
	cow.x = 600
	cow.y = 200
	cow.rad = 32
	cow.img=love.graphics.newImage("graphics/cow.png")
	cow.sound = love.audio.newSource("sounds/Cow.mp3", "static")

	mx = 0
	my = 0
end

function player_update(dt)
	function player_mousepressed( x, y, button )
		if button == 1 then
		mx = x
		my = y
			if checaToqueC(mx,my,dog.x, dog.y, dog.rad) then
			love.graphics.print("OK", 400,0)
			dog.sound:play()

			elseif checaToqueC(mx,my,cat.x, cat.y, cat.rad) then
				love.graphics.print("OK", 400,0)
				cat.sound:play()
			elseif checaToqueC(mx,my,cow.x, cow.y, cow.rad)  then
				love.graphics.print("OK", 400,0)
				cow.sound:play()
			else
				cow.sound:stop()
			end
		end
	end
end

function player_draw()
	

	love.graphics.draw(dog.img, dog.x -32, dog.y-32)
	love.graphics.draw(cat.img, cat.x-32, cat.y-32)
	love.graphics.draw(cow.img, cow.x-32, cow.y-32)

	love.graphics.print(mx, 0,0)
	love.graphics.print(my, 0,10)

end