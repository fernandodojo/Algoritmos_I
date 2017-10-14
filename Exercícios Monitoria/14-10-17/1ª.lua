function checaToqueC(posxT, posyT, posxR, posyR, r)
	

	if (posxR - posxT)^2 + (posyR - posyT)^2 < r^2 then
		--print("Ponto dentro do círculo")
		return true
	else 
		return false	
	end
	--[[
	elseif (posxR - posxT)^2 + (posyR - posyT)^2 > r^2 then
		--print("Ponto fora do círculo")
		return false
	elseif (posxR - posxT)^2 + (posyR - posyT)^2 == r^2 then
		--print("Ponto pertence círculo")
		return false
	end	]]
end


	print("Digite a posição x do Ponto de Toque")
	a = io.read("*n")
	print("Digite a posição y do Ponto de Toque")
	b = io.read("*n")
	print("Digite a posição x do centro da Circunferência")
	c = io.read("*n")
	print("Digite a posição y do centro da Circunferência")
	d = io.read("*n")
	print("Digite o tamanho do raio")
	e = io.read("*n")

	print(checaToqueC(a,b,c,d,e))


