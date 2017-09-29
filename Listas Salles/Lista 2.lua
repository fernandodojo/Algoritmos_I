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
    if v[i] == v[j] then
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

v={}
for i= 0, 35 do
  v[i] = math.random(0,100)
end


for i=#v, 1, -1 do
  print (v[i])
end


--3. Escreva o algoritmo de ordenação por inserção de um vetor de N (1<=N<=100) elementos como um módulo.


--4. Crie um módulo que informa qual o menor número de uma matriz 20x40 de números inteiros.



--5. Dado um vetor de 20 números reais e uma matriz 20x20 de números reais, informe quais linhas e colunas são iguais ao vetor, esteja ele na ordem dada ou em ordem inversa. Assuma que obrigatoriamente há uma linha ou coluna igual ao vetor na matriz.



--6. Uma matriz de caracteres 3x3 foi utilizada para armazenar uma partida de jogo da velha. Os caracteres ‘O’ e ‘X’ foram utilizados para armazenarem a jogada de cada participante. Informe na tela se o vencedor foi o jogador ‘O’, o jogador ‘X’ ou se o resultado foi empate. IMPORTANTE: não serão informadas partidas com dois vencedores, apenas partidas válidas e todas as 9 casas estarão preenchidas com ‘O’ ou ‘X’.



--7. Dado um vetor de 30 números inteiros sem nenhum número repetido e uma matriz 56X56, informe quantos números existentes no vetor também existem na matriz.



--8. Dado um vetor de 50 números reais em ordem crescente, informe quantos desses números DIFERENTES também aparecem na diagonal principal de uma matriz 60x60.



--9. Faça um módulo que calcula o determinante de uma matriz 3X3 de números reais.


--10. Dados dois vetores de 32 números inteiros em ordem crescente, inicialize com o conteúdo desses vetores uma matriz 8x8com de números inteiros em ordem crescente, sendo que os elementos da primeira linha estão em ordem crescente, seguidos dos elementos da segunda linha (todos maiores ou iguais aos da primeira linha) e assim por diante.



--11. Escreva um módulo que retira todos os números repetidos das primeiras N posições de um vetor em ordem crescente, colocando-os em ordem crescente no final do vetor. Exemplo: Para o vetor {1,2,2,3,3,4}, a solução é {1,2,3,4,2,3}.



--12. Escreva um módulo que recebe um vetor lógico de 10 posições e oferece como resultado o produto da operação (((vet[1]Evet[2])OUvet[3])Evet[4]) ... e assim por diante.



--13. Uma matriz 6X6 lógica representa as posições minadas de um jogo. Quando uma posição possui o valor VERDADEIRO significa que há uma mina ali. Escreva um programa que informa se é possível percorrer o tabuleiro de um lado ao outro em linha reta (atravessando uma linha inteira ou coluna inteira) ou diagonal sem passar por uma mina sequer.

