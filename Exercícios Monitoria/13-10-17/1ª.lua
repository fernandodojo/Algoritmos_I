function checaToqueR(posxT, posyT, posxR, posyR)
	


	base = posxR +100
	altura = posyR - 30
		


	if posxT >= posxR and posxT <= base then
		if posyT<= posyR and posyT >= altura then
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
	print("Digite a posição x de origem do Retangulo")
	c = io.read("*n")
	print("Digite a posição y de origem do Retangulo")
	d = io.read("*n")







	print(checaToqueR(a,b,c,d))
