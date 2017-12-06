--http://www.deinf.ufma.br/~csalles/alg/prog_lista2.pdf

--[[for i=1,#m do
  s = ''
  for j=1,#m[i] do
    s = s .. m[i][j] .. ' '
  end
  print(s)
end

--1) Dado um vetor qualquer com 100 numero reiais, faça ummódulo que informa se há ou não numero repetidos nesse vetor.

vetor = {}
for i = 1, 100 do
  vetor[i] = math.random(0,100)
end

function repetido(v)
  count = 0
  for i=1, #v do
    for j = i+1, #v do
      if v[i] == v[j] then
        count = count + 1
        break     
      end
    end
    if count >= 1 then
      return true
    else
      return false
    end
  end
end

print(repetido(vetor))

--2) Crie uma função que imprime na tela os elementos de um vetor de 35 números inteiros na ordem inversa.
vetor = {}
for i = 1, 35 do
  vetor[i] = math.random(0,35)
end

function printreverso(v)
  for i= #v, 1, -1 do
    print(v[i])
  end
end

print(printreverso(vetor))
]]