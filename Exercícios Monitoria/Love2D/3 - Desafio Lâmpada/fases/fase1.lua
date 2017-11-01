function fase1_load()
	x1, y1 = 0, 0

	--Circulo 1
	xC1, yC1, rC1 =250, 400, 32
	--Circulo 2
	xC2, yC2, rC2 = 550, 400, 32
	--Circulo 3
	xC3, yC3, rC3 = 700, 500, 32
	--Valor booleano do C1, C2
	bool1, bool2 = true, true

--Adição de imagens de cada Círculo e Lampada
	green = love.graphics.newImage("images/green.png")
	red = love.graphics.newImage("images/red.png")
	yellow = love.graphics.newImage("images/yellow.png")

	lamp1=love.graphics.newImage("images/lampada1.png")
	lamp2=love.graphics.newImage("images/lampada2.png")

--Adição e Definição de fonte
	font  = love.graphics.setNewFont("backlash.ttf", 32)
	love.graphics.setFont(font)

end

function fase1_update(dt)
	function love.mousepressed( x, y, button )
		if button == 1 then
			mx = x
			my = y
			if checaToqueC(mx, my, xC1, yC1, rC1) then -- detecção de toque apenas quando ocorrer click do mouse
				bool1 = boolean(bool1) --função para mudança de valor booleano oposto apenas quando for detectado toque no botão
			end
			if checaToqueC(mx, my, xC2, yC2, rC2) then
				bool2 = boolean(bool2)
			end
		end
	end
end


function fase1_draw()
	love.graphics.setBackgroundColor(91, 148, 239) -- fundo azul

	if bool1 == true then -- define a utilização da imagem verde quando verdadeiro
		love.graphics.draw(green,xC1-32,yC1-32)
	else -- define a utilização da imagem vermelha quando falso
		love.graphics.draw(red,xC1-32,yC1-32)
	end

	if bool2 == true then
		love.graphics.draw(green,xC2-32,yC2-32)
	else
		love.graphics.draw(red,xC2-32,yC2-32)
	end


--Desenho e posicionamento do botão amarelho(next) dentro do circulo C3
	love.graphics.draw(yellow, xC3-32,yC3-32)


--Fase1 - Acendimento da lampada quando condições são verdadeiras, assim como ativação do botão next.
	if not (bool1) and not(bool2) then
		love.graphics.draw(lamp2, 336, 36)
		if checaToqueC(mx, my, xC3, yC3, rC3) then
			fase2()
		end
	else
		love.graphics.draw(lamp1, 336, 36)
	end

--Impressão dos botões
	love.graphics.print(tostring(bool1), 220, 385)
	love.graphics.print(tostring(bool2), 520, 385)
	love.graphics.printf("NEXT",673, 485, 400)

	-- Impressões de interação com usuário(fase)
	love.graphics.printf("NOT (",100, 385,400)
	love.graphics.printf("AND", 400,385,400)
	love.graphics.printf(" )", 600,385,400)

end

-- Função para troca de fase
function fase2()
	gamestate = "fase2"
	fase2_load()
end
