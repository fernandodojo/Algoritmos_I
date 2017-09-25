--FORMA ALTERNATIVA 1

--Desafio Extra: Crie um vetor com 10 posições e preencha ele com números aleátorios. Retorne para o usuário esse vetor na ordem crescente em que os numero foram inseridos, na ordem crescente e decrescente



j={}
for i=0, 9 do
  j[i] = math.random(0,99)
end

for i=0, 9 do
  print(j[i])
end

--Método Bubble Sort
function bubble_sort(lista)
  for i=0, #lista do
    for k=0, #lista-1-i do
      if lista[k] > lista[k + 1] then
        lista[k], lista[k + 1] = lista[k + 1], lista[k]
      end
    end
  end
  return lista
end

bubble_sort(j)

print ("")
for i=0, 9 do
  print(j[i])
end

print("")

for i=9, 0, -1 do
  print(j[i])
end
