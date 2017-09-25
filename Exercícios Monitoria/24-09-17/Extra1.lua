--Desafio Extra: Crie um vetor com 10 posições e preencha ele com números aleátorios. Retorne para o usuário esse vetor na ordem crescente em que os numero foram inseridos, na ordem crescente e decrescente

j={}
for i=0, 9 do
  j[i] = math.random(0,99)
end

for i=0, 9 do
  print(j[i])
end

print("")

table.sort(j)
for i=0, 9 do
  print(j[i])
end

print("")

for i=9, 0, -1 do
  print(j[i])
end
