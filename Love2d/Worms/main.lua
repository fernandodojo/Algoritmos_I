larguradatela = love.graphics.getWidth()
alturadatela = love.graphics.getHeight()
local anim = require "anim8"
local char1image, animation
local direcao = true


function love.load()
	char1image = love.graphics.newImage("personagem.png")


	char1 = {
		x = larguradatela /4,
		y = larguradatela/1.8,
		angulo = 0,
		tam = 0.7,
		origem = 60,
		velocidade = 300
	}

	local char1anim = anim.newGrid(180, 247, char1image:getWidth( ), char1image:getHeight( ))
	animation = anim.newAnimation(char1anim('1-5', 1,'1-5', 2), 0.03 )

end

function love.update(dt)
    if love.keyboard.isDown("left") and char1.x > 54 then
    char1.x = char1.x - char1.velocidade * dt
    direcao = false
    animation:update(dt)
   	end
   	if love.keyboard.isDown("right") and char1.x < 748 then
    char1.x = char1.x + char1.velocidade * dt
    direcao = true
    animation:update(dt)
   	end
   	if love.keyboard.isDown("a") and char1.x > 54 then
    char1.x = char1.x - char.velocidade * dt
    direcao = false
    animation:update(dt)
   	end
   	if love.keyboard.isDown("d") and char1.x < 748 then
    char1.x = char1.x + char1.velocidade * dt
    direcao = true
    animation:update(dt)
   	end
    

end

function love.draw()
  --love.graphics.print("Loading...", 350, 550, 0, 1.5, 1.5)
  --love.graphics.draw(char1image, char1.x, char1.y, char1.ang, char1.tam, char1.tam)
  if direcao then
    animation:draw(char1image,char1.x, char1.y,0,0.3,0.3,0,0)
  elseif not direcao then
    animation:draw(char1image,char1.x, char1.y,0,-0.3,0.3,0,0)
  end  
end
   

function love.keypressed(key)
  print(key)
end

function love.mousepressed(x,y,button)
  print(x,y,button)
end












































--[[posx = 250
posy = 400
angulo = 0
tam =  0.7
origem = 60

function love.load ()
	imagem = love.graphics.newImage("personagem1.png")
	love.mouse.setVisible(false)
end

function love.update (dt)
	if love.keyboard.isDown("left") then
		posx = posx - 100 * dt
		angulo = angulo - dt * 1
	end
	if love.keyboard.isDown("right") then
		posx = posx + 100 * dt
		angulo = angulo + dt * 1
  end
end

function love.draw()
	rot= angulo
	love.graphics.draw(imagem, posx, posy, rot, tam, tam, origem, origem)
end
]]



