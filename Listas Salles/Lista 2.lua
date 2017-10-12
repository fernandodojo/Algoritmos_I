--[[--1. Dado um vetor qualquer com 100 números reais, faça um módulo que informa se há ou não números repetidos nesse vetor.

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
    if v[i] == v[j] then
      igual = igual +1
      --print (v[i])
    end
  end
end


for i =1, #v do
  print(v[i])
end


if igual > 0 then
  print("O intervalo apresenta " .. igual .. " repetição de valores")
end


-- 2. Crie um módulo que imprime na tela os elementos de um vetor de 35 números inteiros na ordem inversa.

v={}
for i= 0, 35 do
  v[i] = math.random(0,100)
end


for i=#v, 1, -1 do
  print (v[i])
end


--3. Escreva o algoritmo de ordenação por inserção de um vetor de N (1<=N<=100) elementos como um módulo.
v = {}
for i = 1, 100 do
  v[i] = math.random(0,100)
end

for i = 1, 100 do
  print (v[i])
end

for i= 0, #v do
  l = i
  while l>0 and v[l] < v[l-1] do
      v[l], v[l-1] = v[l-1], v[l]
      l = l-1
  end
end



for i = 1, 100 do
  print (v[i])
end
      


--4. Crie um módulo que informa qual o menor número de uma matriz 20x40 de números inteiros.
matriz = {}
for i=1, 2 do
  matriz[i] = {}
  for j = 1 , 4 do
    matriz[i][j] = math.random(0,100)
  end
end
    
for i = 1, 2  do
  for j = 1, 4 do
    print(matriz[i][j])
  end
end


menor = matriz[1][1]

for i = 1, 2  do
  for j = 1, 4 do
    if matriz[i][j] < menor then
      menor = matriz[i][j]
      a = i
      b = j
      print("",a,b)
    end
  end
end

print("", menor)
--

print("")
    
print (matriz[0][0])
print (matriz[0][1])
print (matriz[0][2])
print (matriz[0][3])

print("")

print (matriz[1][0])
print (matriz[1][1])
print (matriz[1][2])
print (matriz[1][3])

print("")

for i = 0, 0  do
  for j = 0, 3 do
    print(matriz[i][j])
  end
end




--5. Dado um vetor de 20 números reais e uma matriz 20x20 de números reais, informe quais linhas e colunas são iguais ao vetor, esteja ele na ordem dada ou em ordem inversa. Assuma que obrigatoriamente há uma linha ou coluna igual ao vetor na matriz.
vector = {}
for linha =1, 4 do
  vector[linha] = math.random(0,10)
end

for i =1, 4 do
  print(vector[i])
end

print("")
--Construção de Matriz
matriz = {}
for i=1, 4 do
  matriz[i] = {}
  for j = 1 , 4 do
    matriz[i][j] = math.random(0,10)
  end
end
--Impressão de Matriz
for i = 1, 4  do
  for j = 1, 4 do
    print(matriz[i][j])
  end
end

print("")

--Inserção do vetor na linha 2 da matriz  
for i = 2, 2 do
  for j =1, 4 do
    matriz[i][j] = vector[j]
  end
end

Inserção do vetor na conluna 2 da matriz
for i =1, 20 do
  for j = 2,20 do
    matriz[i][j] = vector[i]
  end
end


--Impressão da Matriz Com Vetor
for i = 1, 4  do
  for j = 1, 4 do
    print(matriz[i][j])
  end
end

print("")


for i = 1, 4  do
  for j = 1, 4 do
    if (matriz[i][j] == vector[j]) then
      a = i
      --print("linha", i)
    end
    if matriz[j][i] == vector[j] then
      b =i
      --print("coluna:", i)
    end
  end
end

print("linha", a)
print("coluna", b)


]]

--6. Uma matriz de caracteres 3x3 foi utilizada para armazenar uma partida de jogo da velha. Os caracteres ‘O’ e ‘X’ foram utilizados para armazenarem a jogada de cada participante. Informe na tela se o vencedor foi o jogador ‘O’, o jogador ‘X’ ou se o resultado foi empate. IMPORTANTE: não serão informadas partidas com dois vencedores, apenas partidas válidas e todas as 9 casas estarão preenchidas com ‘O’ ou ‘X’.
vectorx = {"x","x","x"}
vectoro = {"o","o","o"}


matriz = {{"x","o","o"}, {"o","x","o"}, {"x","x","x"}}

--[[for linha = 1 , 3 do
  matriz[linha] = {}
  for coluna=1, 3 do
    matriz[linha][coluna] = math.random("o", "x")
  end
end
]]
--[[
--Impressão de Matriz
for i = 1, 3  do
  for j = 1, 3 do
    print(matriz[i][j])
  end
end


for linha = 1, 3 do
  for coluna=1, 3 do
    if matriz[linha][coluna] == "x" then
      print(linha, "vencedor x por linha")
    end
    if matriz[linha][coluna] == "o" then
      print(linha, "vencedor o por linha")
    end
    if matriz[coluna][linha] == "x" then
      print(linha, "vencedor x por coluna")
    end
    if matriz[coluna][linha] == "o" then
      print(linha, "vencedor o por coluna")
    end
  end
end

]]
--[[]
for linha = 1, 3 do
  for coluna=1, 3 do
    if (matriz[linha][coluna] == vectorx[coluna]) then
      a = linha --print("Vitória do jogador X")
    elseif matriz[coluna][linha] == vectorx[coluna] then
      print(coluna, linha)
    end
    if matriz[linha][coluna] == vectoro[coluna] then
      c = coluna
    elseif matriz[coluna][linha] == vectoro[coluna] then
      d = linha --print("Vitória do jogador O")
    end
  end
end

]]

--7. Dado um vetor de 30 números inteiros sem nenhum número repetido e uma matriz 56X56, informe quantos números existentes no vetor também existem na matriz.

vector = {}

for i = 1, 30 do
  vector[i] = math.random(0, 300)
end

for i = 1, 30 do
  print(vector[i])
end
  
matriz = {}
for i=1, 56 do
  matriz[i]={}
  for j= 1, 56 do
    matriz[i][j]= math.random(0,56)
  end
end







--8. Dado um vetor de 50 números reais em ordem crescente, informe quantos desses números DIFERENTES também aparecem na diagonal principal de uma matriz 60x60.



--9. Faça um módulo que calcula o determinante de uma matriz 3X3 de números reais.


--10. Dados dois vetores de 32 números inteiros em ordem crescente, inicialize com o conteúdo desses vetores uma matriz 8x8com de números inteiros em ordem crescente, sendo que os elementos da primeira linha estão em ordem crescente, seguidos dos elementos da segunda linha (todos maiores ou iguais aos da primeira linha) e assim por diante.



--11. Escreva um módulo que retira todos os números repetidos das primeiras N posições de um vetor em ordem crescente, colocando-os em ordem crescente no final do vetor. Exemplo: Para o vetor {1,2,2,3,3,4}, a solução é {1,2,3,4,2,3}.



--12. Escreva um módulo que recebe um vetor lógico de 10 posições e oferece como resultado o produto da operação (((vet[1]Evet[2])OUvet[3])Evet[4]) ... e assim por diante.



--13. Uma matriz 6X6 lógica representa as posições minadas de um jogo. Quando uma posição possui o valor VERDADEIRO significa que há uma mina ali. Escreva um programa que informa se é possível percorrer o tabuleiro de um lado ao outro em linha reta (atravessando uma linha inteira ou coluna inteira) ou diagonal sem passar por uma mina sequer.

