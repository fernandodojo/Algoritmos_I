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
]]