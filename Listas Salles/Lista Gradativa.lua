--LISTA GRADATIVA -- 





--[[
--8
vet = {1,5,5,7,-3,6,-9, -9,-24,-12,-98,2,-2,-1,-23,0}
function maiorvet(vetor)
  maior = vetor[1]
  for i =1, #vetor do
    if vetor[i] > maior then
      maior = vetor[i]
    end
  end
  return maior
end
print(maiorvet(vet))

--9
vetpositivo = {1,4,5,7,3,4,9,23,4,98,2,2,1,23,0}
function maiorvet(vetor)
  maior = vetor[1]
  for i =1, #vetor do
    if vetor[i] > maior then
      maior = vetor[i]
    end
  end
  return maior
end
print(maiorvet(vetpositivo))

--10
vetnegativo = {-1,-4,-5,-7,-3,-4,-9,-23,-4,-98,-2,-2,-1,-23}
function menorvet(vetor)
  menor = vetor[1]
  for i =1, #vetor do
    if vetor[i] < menor then
      menor = vetor[i]
    end
  end
  return menor
end
print(menorvet(vetnegativo))

--11
vet = {1,5,5,7,-3,6,-9, -9,-24,-12,-98,2,-2,-1,-23,0}
function menorvet(vetor)
  menor = vetor[1]
  maior = vetor[1]
  for i =1, #vetor do
    if vetor[i] < menor then
      menor = vetor[i]
    end
    if vetor[i] > maior then
      maior = vetor[i]
    end
  end
  return menor, maior
end
print(menorvet(vet))

--12
vetor = {100,5,-5,7,-3,25,-9, -9,-24,-12,98,2,-2,-1,-23,0}
function bublesort(vet)
  for i =1 , #vet do
    for j = i , #vet do
      if vet[j]< vet[i] then
        vet[i], vet[j] = vet[j], vet[i]
      end
    end
  end
  print(vetor[#vetor-1])  
  return vet
end
bublesort(vetor)

--13
vetor = {100,5,-5,7,-3,25,-9, -9,-24,-12,98,2,-2,-1,-23,0}
function bublesort(vet)
  for i =1 , #vet do
    for j = i , #vet do
      if vet[j]< vet[i] then
        vet[i], vet[j] = vet[j], vet[i]
      end
    end
  end
  print(vetor[#vetor-2])  
  return vet
end
bublesort(vetor)

--19
vetor = {}
for i=1 , 10 do 
	vetor[i] = math.random(0,100)
end

function contapares(vet)
	count = 0
	for i=1, #vet do
		if vet[i]%2 == 0 then
			count = count + 1
		end
	end
	return count
end

print(contapares(vetor))

--20

vetor = {}
for i=1 , 100 do 
	vetor[i] = math.random(0,100)
end

function maiorpar(vet)

maior = vet[1]
  
	for i =1, #vet do    
	    --substituição do valor do maior caso esteja receba um valor impar
	    if maior%2~= 0 then
	    	if vet[i]%2==0 then
	    		maior = vet[i]
	      	end
	    end
    	--substituição do valor do maior caso esteja receba um valor impar
    
		if vet[i] > maior and vet[i]%2==0 then
			maior = vet[i]
		end

	end

	if maior%2~=0 then
		print("o vetor informado não possei numeros pares")
	else
		return maior
	end

end

print(maiorpar(vetor))

-- 21

vetor = {}
for i=1 , 100 do 
	vetor[i] = math.random(-100,-1)
end

function menorpar(vet)

menor = vet[1]
  
	for i =1, #vet do    
	    --substituição do valor do maior caso esteja receba um valor impar
	    if menor%2~= 0 then
	      if vet[i]%2==0 then
	        menor = vet[i]
	      end
	    end
	    --substituição do valor do maior caso esteja receba um valor impar
    
		if vet[i] < menor and vet[i]%2==0 then
			menor = vet[i]
		end

	end

	if menor%2~=0 then
		print("o vetor informado não possei numeros pares")
	else
		return menor
	end

end

print(menorpar(vetor))

--22
vetor = {}
for i=1 , 100 do 
	vetor[i] = math.random(-100,100)
end

function maiorqualquer(vet)

maior = vet[1]
  
	for i =1, #vet do    
	    --substituição do valor do maior caso esteja receba um valor impar
	    if maior%2~= 0 then
	    	if vet[i]%2==0 then
	    		maior = vet[i]
	      	end
	    end
    	--substituição do valor do maior caso esteja receba um valor impar
    
		if vet[i] > maior and vet[i]%2==0 then
			maior = vet[i]
		end

	end

	if maior%2~=0 then
		print("o vetor informado não possei numeros pares")
	else
		return maior
	end

end

print(maiorqualquer(vetor))



--23
vetor = {}
for i=1 , 100 do 
	vetor[i] = math.random(1,100)
end

function maiormenorpar(vet)

maior = vet[1]
menor = vet[1]
  
	for i =1, #vet do    
	    --substituição do valor do maior caso esteja receba um valor impar
	    if maior%2~= 0 then
	    	if vet[i]%2==0 then
	    		maior = vet[i]
	      	end
	    end
	    if menor%2~= 0 then
	    	if vet[i]%2==0 then
	    		menor = vet[i]
	      	end
	    end
    	--substituição do valor do maior caso esteja receba um valor impar
    
		if vet[i] > maior and vet[i]%2==0 then
			maior = vet[i]
		end
		if vet[i] < menor and vet[i]%2==0 then
			menor = vet[i]
		end

	end

	if maior%2~=0 or menor%2~=0 then
		print("o vetor informado não possei numeros pares")
	else
		return maior, menor
	end

end

print(maiormenorpar(vetor))

--24 
vetor = {}
for i=1 , 100 do 
	vetor[i] = math.random(1,100)
end

function maiormenorpar(vet)

maior = vet[1]
menor = vet[1]
  
	for i =1, #vet do    
	    --substituição do valor do maior caso esteja receba um valor impar
	    if maior%2~= 0 then
	    	if vet[i]%2==0 then
	    		maior = vet[i]
	      	end
	    end
	    if menor%2~= 0 then
	    	if vet[i]%2==0 then
	    		menor = vet[i]
	      	end
	    end
    	--substituição do valor do maior caso esteja receba um valor impar
    
		if vet[i] > maior and vet[i]%2==0 then
			maior = vet[i]
		end
		if vet[i] < menor and vet[i]%2==0 then
			menor = vet[i]
		end

	end

	if maior%2~=0 or menor%2~=0 then
		print("o vetor informado não possei numeros pares")
	else
		return maior, menor
	end

end

print(maiormenorpar(vetor))

--25 
vetor = {}
for i=1 , 100 do 
	vetor[i] = math.random(1,100)
end

function maiorparimpar(vet)

maiorpar = vet[1]
maiorimpar = vet[1]
  
	for i =1, #vet do    
	    --substituição do valor do maior caso esteja receba um valor impar
	    if maiorpar%2~= 0 then
	    	if vet[i]%2==0 then
	    		maiorpar = vet[i]
	      	end
	    end
	    if maiorimpar%2== 0 then
	    	if vet[i]%2==0 then
	    		maiorimpar = vet[i]
	      	end
	    end
    	--substituição do valor do maior caso esteja receba um valor impar
    
		if vet[i] > maiorpar and vet[i]%2==0 then
			maiorpar = vet[i]
		end
		if vet[i] < maiorimpar and vet[i]%2~=0 then
			maiorimpar = vet[i]
		end

	end

	if maiorpar%2~=0 then 
		print("o vetor informado não possue numero par")
	elseif  maiorimpar%2==0 then
		print("O vetor informado nao pussui numero impar")
	else
		return maiorpar, maiorimpar
	end

end

print(maiorparimpar(vetor))

--26

vetor = {}
for i=1 , 100 do 
	vetor[i] = math.random(-100,100)
end

function maiorparimpar(vet)

maiorpar = vet[1]
maiorimpar = vet[1]
  
	for i =1, #vet do    
	    --substituição do valor do maior caso esteja receba um valor impar
	    if maiorpar%2~= 0 then
	    	if vet[i]%2==0 then
	    		maiorpar = vet[i]
	      	end
	    end
	    if maiorimpar%2== 0 then
	    	if vet[i]%2==0 then
	    		maiorimpar = vet[i]
	      	end
	    end
    	--substituição do valor do maior caso esteja receba um valor impar
    
		if vet[i] > maiorpar and vet[i]%2==0 then
			maiorpar = vet[i]
		end
		if vet[i] < maiorimpar and vet[i]%2~=0 then
			maiorimpar = vet[i]
		end

	end

	if maiorpar%2~=0 then 
		print("o vetor informado não possue numero par")
	elseif  maiorimpar%2==0 then
		print("O vetor informado nao pussui numero impar")
	else
		return maiorpar, maiorimpar
	end

end

print(maiorparimpar(vetor))


--27

mat = {}
for i =1, 40 do 
	mat = {}
	for j =1, 30 do
		mat[i][j] = math.random(-50,50)
	end
end


a = 2

for i =1 , 40 do
	for j =1 , 30 do 
		mat[i][j] = mat[i][j] * a
	end
end


--28

mat = {}
for i =1, 2 do
	mat[i] = {}
	for j =1, 4 do
		mat[i][j] = math.random(1,20)
	end
end


for i =1, 2 do
	for j =1, 4 do
		for k =j, 4  do		    
		    if mat[i][k] < mat[i][j]  then
		        mat[i][j], mat[i][k] = mat[i][k], mat[i][j]      		
    		end
  		end
	end
end

m = mat

for i=1,#m do
  s = ''
  for j=1,#m[i] do
    s = s .. m[i][j] .. ' '
  end
  print(s)
end]]

--29

mat = {}
for i =1, 2 do
	mat[i] = {}
	for j =1, 4 do
		mat[i][j] = math.random(1,20)
	end
end
for i=1, 2 do
	for j =1, 4 do
		for k=i, 2 do
			if mat[j][k] < mat[j][i] then
				mat[j][k] , mat[j][i] = mat[j][i], mat[j][k]
			end
		end
	end
end

m = mat

for i=1,#m do
  s = ''
  for j=1,#m[i] do
    s = s .. m[i][j] .. ' '
  end
  print(s)
end


--30
--[[
mat = {}
for i =1, 30 do 
	mat[i] = {}
	for j =1, 50 do
		mat[i][j] = math.random(-50,50)
	end
end

function somamatriz(matriz)
	soma = 0
	for i =1, 30 do
		for j =1 , 50 do
			soma = soma + matriz[i][j]
		end
	end
	return soma
end
print(somamatriz(mat))

--31

mat = {}
for i =1, 30 do 
	mat[i] = {}
	for j =1, 50 do
		mat[i][j] = math.random(-150,150)
	end
end

function contaparesmatriz(matriz)
	count = 0
	for i =1, 30 do
		for j=1, 50 do
			if matriz[i][j]%2==0 then
				count = count + 1
			end
		end
	end
	return count
end
print(contaparesmatriz(mat))


--32 
mat = {}
for i =1, 30 do 
	mat[i] = {}
	for j =1, 50 do
		mat[i][j] = math.random(-150,150)
	end
end
function contaparimparmatriz(matriz)
	countpar = 0
	countimpar = 0 
	for i =1, 30 do
		for j=1, 50 do
			if matriz[i][j]%2==0 then
				countpar = countpar + 1
			end
			if matriz[i][j]%2~=0 then
				countimpar = countimpar + 1
			end
		end		
	end
	return countpar, countimpar
end

print(contaparimparmatriz(mat))

--33
mat = {}
for i =1, 30 do 
	mat[i] = {}
	for j =1, 50 do
		mat[i][j] = math.random(-150,150)
	end
end

function menormatriz(matriz)
	menor = matriz[1]
	for i=1, 30 do
		for j =1, 50 do
			if matriz [i][j]< menor then
				menor = matriz[i][j]
			end
		end
	end
	return menor
end

print(menormatriz(mat))

--34
mat = {}
for i =1, 30 do 
	mat[i] = {}
	for j =1, 50 do
		mat[i][j] = math.random(-150,150)
	end
end

function procurapar(matriz)
	par = 0
	flag = false
	for i=1, 50 do
		if flag then
			break
		end
		for j=1, 30 do
			if matriz[j][i]%2==0 then
				par = matriz[j][i]
				flag = true
				break
			end
		end
	end
	return par
end

print(procurapar(mat))

--35

mat = {}
for i =1, 30 do 
	mat[i] = {}
	for j =1, 50 do
		mat[i][j] = math.random(1,1000)
	end
end

function maiorparmatriz(matriz)
	maiorpar = matriz[1][1]

	for i=1, 30 do
		for j=1, 50 do
			if maiorpar%2~=0 then
				if matriz[i][j]%2==0 then
					maiorpar = matriz[i][j]
				end
			end
			if matriz[i][j] > maiorpar and matriz[i][j]%2==0 then
				maiorpar = matriz[i][j]
			end
		end
	end
	if maiorpar%2~= 0 then
		print("matriz não possui numero par")
	else
		return maiorpar
	end
end

print(maiorparmatriz(mat))

--36

mat = {}
for i =1, 30 do 
	mat[i] = {}
	for j =1, 50 do
		mat[i][j] = math.random(1,1000)
	end
end

function menorparmatriz(matriz)
	menorpar = matriz[1][1]

	for i=1, 30 do
		for j=1, 50 do
			if menorpar%2~=0 then
				if matriz[i][j]%2==0 then
					menorpar = matriz[i][j]
				end
			end
			if matriz[i][j] < menorpar and matriz[i][j]%2==0 then
				menorpar = matriz[i][j]
			end
		end
	end
	if menorpar%2~= 0 then
		print("matriz não possui numero par")
	else
		return menorpar
	end
end

print(menorparmatriz(mat))


--37
mat = {}
for i =1, 30 do 
	mat[i] = {}
	for j =1, 50 do
		mat[i][j] = math.random(1,1000)
	end
end

function maiormenorparmatriz(matriz)
	maiorpar = matriz[1][1]
	menorpar = matriz[1][1]
	for i =1, 30 do
		for j=1 , 50 do
			if maiorpar%2~=0 then
				if matriz[i][j]%2==0 then
					maiorpar = matriz[i][j]
				end
			end
			if menorpar%2~=0 then
				if matriz[i][j]%2==0 then
					menorpar=matriz[i][j]
				end
			end
			if matriz[i][j]> maiorpar and matriz[i][j]%2==0 then
				maiorpar = matriz[i][j]
			end
			if matriz[i][j]< menorpar and matriz[i][j]%2==0 then
				menorpar = matriz[i][j]
			end
		end
	end
	if menorpar%2~=0 then
		print("a matriz não possui numero par")
	else
		return maiorpar, menorpar
	end
end

print(maiormenorparmatriz(mat))

--38

function maiorparmatriz(matriz)
	maiorpar = matriz[1][1]

	for i=1, 30 do
		for j=1, 50 do
			if maiorpar%2~=0 then
				if matriz[i][j]%2==0 then
					maiorpar = matriz[i][j]
				end
			end
			if matriz[i][j] > maiorpar and matriz[i][j]%2==0 then
				maiorpar = matriz[i][j]
			end
		end
	end
	if maiorpar%2~= 0 then
		print("matriz não possui numero par")
	else
		return maiorpar
	end
end

--39
vetor= {}
for i =1, 50 do
	vetor[i] = math.random(1,100)
end

function repetido(matriz)
	flag = false
	for i=1, 50 do
		if flag then
			break
		end
		for j=i, 50 do
			if j == i then
				print("Existe numero repetido")
				flag = true
				break				
			end
		end
	end
end

print(repetido(vetor))

--40

mat = {}
for i =1, 30 do 
	mat[i] = {}
	for j =1, 30 do
		mat[i][j] = math.random()
	end
end

function repetidomatriz(matriz)
	flag = false
	for i=1, 30 do
		if flag then
			break
		end
		for j=1, 30 do
			if flag then
				break
			end
			for k=1, 30 do
				if flag then
					break
				end
				for l=1, 30 do
					if matriz[i][j] == matriz[k][l] then
						print("Existe numero repetido", matriz[i][j])
						flag = true
						break
					end
				end
			end
		end
	end
end

print(repetidomatriz(mat))


--42
vet = {}
for i =1, 10 do
	vet[i] = math.random(0,100)
end

function vetorinverso(vetor)
	vetorinvertido = {}
	for i=1, 10 do
		vetorinvertido[i] = vetor[#vetor-i+ 1]
	end
	return vetorinvertido

end

for i =1, 10 do
	print(vet[i], vetorinverso(vet)[i])
end


--43
mat = {}
for i=1, 4 do
	mat[i] = {}
	for j=1, 4 do
		mat[i][j] = math.random(1,10)
	end
end


function inversomatriz(matriz)
	matinversa = {}
	for i=1, 4 do
		matinversa[i]= {}
		for j=1, 4 do
			matinversa[i][j] = matriz[j][i]
		end
	end
	return matrizinversa
end
]]


