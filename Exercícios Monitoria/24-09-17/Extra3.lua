--FORMA ALTERNATIVA 2

--Desafio Extra: Crie um vetor com 10 posições e preencha ele com números aleátorios. Retorne para o usuário esse vetor na ordem crescente em que os numero foram inseridos, na ordem crescente e decrescente


j={}
for i=0, 9 do
  j[i] = math.random(0,99)
end

for i=0, 9 do
  print(j[i])
end

--Método Insertion Sort

function ins_sort(lista)
  for i=0, #lista do   
    l = i                  
    while l > 0 and lista[l] < lista[l-1] do
      lista[l], lista[l-1] = lista[l-1], lista[l] 
      l=l-1
    end
  end
  return lista
end

ins_sort(j)

print ("")
for i=0, 9 do
  print(j[i])
end

print("")

for i=9, 0, -1 do
  print(j[i])
end
