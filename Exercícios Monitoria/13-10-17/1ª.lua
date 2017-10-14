function checaToqueR(posxT, posyT, posxR, posyR)
	base = posxR * 100
	altura = posyR * 30
	--retangulo = base * altura

	if posxT > 0 and posxT <= base then
		if posyT> 0 and posyT <= altura then
			return true
		else
			return false
		end
	else
		return false
	end	
end


	print("Digite a posição x do Ponto de Toque")
	a = io.read("*n")
	print("Digite a posição y do Ponto de Toque")
	b = io.read("*n")
	print("Digite a posição x do Retangulo")
	c = io.read("*n")
	print("Digite a posição y do Retangulo")
	d = io.read("*n")

	print(checaToqueR(a,b,c,d))
