--1. Dado um vetor qualquer com 100 números reais, faça um módulo que informa se há ou não números repetidos nesse vetor.

v = {}
igual = 0
for i =1, 100 do
  v[i] = math.random(0,500)
end

--v = {3,2,5,2,3}
igual = 0
for i=1, #v-1 do
  
  for j=i+1, #v do
    --print ("i",i, "Valor de i:", v[i], "j", j,"Valor de J:",v[j], igual)
    if v[i] == v[j+1] then
      igual = igual +1
      --print (v[i])
    end
  end
end

--[[
for i =1, #v do
  print(v[i])
end
]]

if igual > 0 then
  print("O intervalo apresenta " .. igual .. " repetição de valores")
end

-- 2. Crie um módulo que imprime na tela os elementos de um vetor de 35 números inteiros na ordem inversa.