io.stdout:setvbuf("no")
io.stdout:setvbuf "no"

--larguradatela = love.graphics.getWidth()
--alturadatela = love.graphics.getHeight()

function love.load()
	love.graphics.setBackgroundColor(135, 181, 242, 255)

	--NAVE1
	nave1img = love.graphics.newImage("personagem1flip.png")
	nave1 = {
		x = 0--[[larguradatela/4]],
		y = 400 --[[alturadatela/1.5]],
		--[[tam = 1,
		centroimgx = nave1img:getWidth()/2,
		centroimgy = nave1img:getHeight()/2,
		ang = 0,]]
		vel = 200,
		comprimento = nave1img:getWidth(),
		altura = nave1img:getHeight()
		
	}
	--NAVE1

	--BLOCO
	block = {
		{x = 300,y = 400}--[[,
		{x = 400,y = 400},
		{x = 500,y = 400}  
	
	]]
	}
	--BLOCO

	contadordepontos = 0
	
	

end

function love.draw()
	----NAVE1 DESENHO
	love.graphics.draw(nave1img, nave1.x, nave1.y)--,nave1.ang, nave1.tam, nave1.tam, nave1.centroimgx,nave1.centroimgy)
	----NAVE1 DESENHO

	--BLOCK DESENHO
	for i, v in pairs(block) do
		love.graphics.rectangle("fill", v.x, v.y, 10, 10)
	end
	--BLOCK DESENHO

	love.graphics.print(contadordepontos, 0, 0)

	if contadordepontos > 5 then
		love.graphics.print("WIN", 350, 300, 0 , 5)
	end

end

function love.update(dt)
	if love.keyboard.isDown("d") or love.keyboard.isDown("right")and nave1.x  + nave1.comprimento--[[+ nave1.centroimgx/2]] < 800 then
		nave1.x = nave1.x + nave1.vel * dt
	end
	if love.keyboard.isDown("a") or love.keyboard.isDown("left")and nave1.x --[[- nave1.centroimgx/2]] > 0  then 
		nave1.x = nave1.x - nave1.vel * dt
	end
	if love.keyboard.isDown("w") or love.keyboard.isDown("up")and nave1.y --[[- nave1.centroimgy/2]] > 0  then
		nave1.y = nave1.y - nave1.vel * dt
	end
	if love.keyboard.isDown("s") or love.keyboard.isDown("down") and nave1.y + nave1.altura --[[+ nave1.centroimgy/2 ]]< 600 then
		nave1.y = nave1.y + nave1.vel * dt
	end


	for i, v in pairs(block) do
		if	CheckCollision(nave1.x, nave1.y,nave1.comprimento, nave1.altura,v.x, v.y, 10, 10) then
			print(true)
			contadordepontos = contadordepontos + 1
			v.delete = true -- perguntar
			--table.remove(block,i)
			newblock = {x = math.random(790), y = math.random(590)}
			table.insert(block, newblock)
		else
			print(false)
		end
	end
	-- perguntar https://www.youtube.com/watch?v=DEmEdGZmb9w&index=11&list=PL510hI5Jnct4IChJaNsrBRyOWDFip9Akr
	for i = #block , 1, -1 do
		if block[i].delete then
			table.remove(block, i)
		end
	end
	--perguntar
end

function love.keypressed(key)

end

function love.mousepressed(x, y, button)

end



-- https://www.love2d.org/wiki/BoundingBox.lua-- Collision detection function;
-- Returns true if two boxes overlap, false if they don't;
-- x1,y1 are the top-left coords of the first box, while w1,h1 are its width and height;
-- x2,y2,w2 & h2 are the same, but for the second box.
function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end


--[[
LOOPS FOR ON NUMERIC FORM AND GENERIC

table = {}
for index, value in pairs(table) do
	print(index, value)
end

or 

table = {{x= , y= }}
for i, #table do
	print (table[i].x, table[i].y)
end

or
table = {{x= , y= }}
for i, v in pairs(table) do
	print(v.x, v.y)
end
]]