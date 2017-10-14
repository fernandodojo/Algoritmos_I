larguradatela = love.graphics.getWidth()
alturadatela = love.graphics.getHeight()
local anim = require "anim8" -- chamada da biblioteca necessaria para animação.  https://github.com/kikito/anim8
local char1image, animation  -- atribuição de variaveis
local direcao = true		 -- variável para auxilar o espelhamento da animação


function love.load()
--love.window.setMode(1024, 768, {resizable=true, vsync=false, minwidth=800, minheight=600})
	char1image = love.graphics.newImage("personagem.png")

--PERSONAGEM 1 
	char1 = {
		x = larguradatela /2,
		y = larguradatela/1.8,
		angulo = 0,
		tam = 0.7,
		--origem = 60,
		velocidade = 300
	}
--Animãção do personagem 1
	local char1anim = anim.newGrid(180, 247, char1image:getWidth( ), char1image:getHeight( ))
	animation = anim.newAnimation(char1anim('1-5', 1,'1-5', 2), 0.03 )
--Teste tamanhos de personagem e tela
	print (char1image:getWidth( ), char1image:getHeight( ))
	print (larguradatela)

--PERSONAGEM 1 

--TIROS
atira = true
delaytiro = 0.5
tempodeatirar = delaytiro
tiros = {}
tiroimage = love.graphics.newImage("flash04.png")

--TIROS	

end

function love.update(dt)
	movimentos(dt)
	tiro(dt)
    
    

end

function movimentos(dt)
	--char1image:getWidth( )/21, foi realizado a divisão por 20 para encontrar a metade do tamanho de cada imagem da animação,
	--porém devido a discrepancias do centro, alterou=se para 21, para melhor resultado final.
	if love.keyboard.isDown("left") and char1.x >  (0 + char1image:getWidth( )/21) then
    char1.x = char1.x - char1.velocidade * dt
    direcao = false
    animation:update(dt)
   	end
   	if love.keyboard.isDown("right") and char1.x < (larguradatela - char1image:getWidth( )/21) then
    char1.x = char1.x + char1.velocidade * dt
    direcao = true
    animation:update(dt)
   	end
   	if love.keyboard.isDown("a") and char1.x >  (0 + char1image:getWidth( )/21) then
    char1.x = char1.x - char1.velocidade * dt
    direcao = false
    animation:update(dt)
   	end
   	if love.keyboard.isDown("d") and char1.x < (larguradatela - char1image:getWidth( )/21) then
    char1.x = char1.x + char1.velocidade * dt
    direcao = true
    animation:update(dt)
   	end
end

function tiro(dt)
	tempodeatirar = tempodeatirar - (1*dt)
	if tempodeatirar <0 then
		atira = true
	end
	if love.keyboard.isDown("space") and atira then
		novotiro = {x = char1.x, y = char1.y, img = tiroimage }
		table.insert (tiros,novotiro)
		atira = false
		tempodeatirar = delaytiro
	end
	for i, tiro in ipairs(tiros) do
		 tiro.y = tiro.y - (500 *dt)
		if tiro.y< 0 then
			table.remove(tiros,i)
		end
	end
end

function love.draw()
  --love.graphics.print("Loading...", 350, 550, 0, 1.5, 1.5)
  --love.graphics.draw(char1image, char1.x, char1.y, char1.ang, char1.tam, char1.tam)

 -- char1image:getWidth( )/10 referente ao tamanho da animação q tem 900p, logo foi necessario a divisão por 10 para encontrar seu centro
  --PERSONAGEM ANIMAÇÃO
  if direcao then
    animation:draw(char1image,char1.x, char1.y,0,0.3,0.3,char1image:getWidth( )/10)
  elseif not direcao then
    animation:draw(char1image,char1.x, char1.y,0,-0.3,0.3, char1image:getWidth( )/10)
  end  
  --PERSONAGEM ANIMAÇÃO



  --TIRO ANIMAÇÃO
  for i, tiro in ipairs (tiros) do
  	love.graphics.draw(tiroimage, tiro.x, tiro.y, 0, 0.1, 0.1, tiroimage:getWidth()/2,tiroimage:getHeight()/2)
  end


  --TIRO ANIMAÇÃO

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



