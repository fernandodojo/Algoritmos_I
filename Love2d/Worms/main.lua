larguradatela = love.graphics.getWidth()
alturadatela = love.graphics.getHeight()
--print (char1image:getWidth( ), char1image:getHeight( ))
--print (larguradatela)
local anim = require "anim8" -- chamada da biblioteca necessaria para animação.  https://github.com/kikito/anim8
local char1image, animchar1  -- atribuição de variaveis
local direcao = true		 -- variável para auxilar o espelhamento da animação
local tiro1image, animtiro1


function love.load()

--PERSONAGEM 1 
	char1 = {
		x = larguradatela /2,
		y = larguradatela/1.8,
		angulo = 0,
		tam = 0.9,
		--origem = 60,
		velocidade = 20
	}

	--love.window.setMode(1024, 768, {resizable=true, vsync=false, minwidth=800, minheight=600})
	char1image = love.graphics.newImage("personagem.png")

--Animãção do personagem 1
	local char1anim = anim.newGrid(180, 247, char1image:getWidth( ), char1image:getHeight( ))
	animchar1 = anim.newAnimation(char1anim('1-5', 1,'1-5', 2), 0.03 )

--PERSONAGEM 1 




--TIROS
	tiro1 = {






	}
	
	tiro1image = love.graphics.newImage("spritesheet-512px-by-197px-per-frameflip.png")

	local tiro1anim = anim.newGrid(211, 81,tiro1image:getWidth( ), tiro1image:getHeight( ))
	animtiro1 = anim.newAnimation(tiro1anim('1-3', 1,'1-3', 2), 0.03 )

--TIROS	

end

function love.update(dt)
	movimentos(dt)

	for i, v in pairs(tiro1) do
		v.x = v.x + 200* dt
		if v.x > 880 then
			v.getremoved = true
		end
	end
	

	animtiro1:update(dt)


	     

end

function movimentos(dt)
	--char1image:getWidth( )/21, foi realizado a divisão por 20 para encontrar a metade do tamanho de cada imagem da animação,
	--porém devido a discrepancias do centro, alterou=se para 21, para melhor resultado final.
	if love.keyboard.isDown("left") and char1.x >  (0 + char1image:getWidth( )/21) then
    char1.x = char1.x - char1.velocidade * dt
    direcao = false
    animchar1:update(dt)
   	end
   	if love.keyboard.isDown("right") and char1.x < (larguradatela - char1image:getWidth( )/21) then
    char1.x = char1.x + char1.velocidade * dt
    direcao = true
    animchar1:update(dt)
   	end
   	if love.keyboard.isDown("a") and char1.x >  (0 + char1image:getWidth( )/21) then
    char1.x = char1.x - char1.velocidade * dt
    direcao = false
    animchar1:update(dt)
   	end
   	if love.keyboard.isDown("d") and char1.x < (larguradatela - char1image:getWidth( )/21) then
    char1.x = char1.x + char1.velocidade * dt
    direcao = true
    animchar1:update(dt)
   	end
end

function disparos(dt)
end


function love.draw()
  
 
  --PERSONAGEM ANIMAÇÃO
  -- char1image:getWidth( )/10 referente ao tamanho da animação q tem 900p, logo foi necessario a divisão por 10 para encontrar seu centro
  if direcao then
    animchar1:draw(char1image,char1.x, char1.y,0,0.3,0.3,char1image:getWidth( )/10, char1image:getHeight( )/4)
  elseif not direcao then
    animchar1:draw(char1image,char1.x, char1.y,0,-0.3,0.3, char1image:getWidth( )/10,char1image:getHeight( )/4 )
  end  
  --PERSONAGEM ANIMAÇÃO




  --TIRO ANIMAÇÃO
  --if direcao then
  	for i, v in pairs (tiro1) do
  		animtiro1:draw(tiro1image,v.x, v.y, 0, 0.3, 0.3, tiro1image:getWidth()/6,tiro1image:getHeight()/4)
 	end
  
  --TIRO ANIMAÇÃO

end
   

function love.keypressed(key)
	if key == "space" then
		disparos()
		
		table.insert(tiro1, {x = char1.x, y = char1.y})
	end
end

function love.mousepressed(x,y,button)
 
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



