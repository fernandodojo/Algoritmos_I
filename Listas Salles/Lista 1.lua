--[[--1. Crie um programa que lê três inteiros e informa VERDADEIRO se apenas o maior deles é parou se o menor deles é ímpar ou informa FALSO em caso contrário.
print("digite o primeiro numero")
a=io.read("*n")
print("digite o segundo numero")
b=io.read("*n")
print("digite o terceiro numero")
c=io.read("*n")


if a >= c and c >= b then
  maior =a
  menor =b
  --print(b, c ,a)
elseif a >= b and b >= c then
  maior =a
  menor =c
  --print (c, b, a) 
elseif b >= a and a >= c then
  maior =b
  menor =c
  --print (c, a, b)
elseif b>= c and c >= a then
  maior =b
  menor =a
  --print (a, c, b)
elseif c >= a and a >= b then
  maior =c
  menor =b
  --print (b, a, c)
elseif c >= b and b >= a then
  maior =c
  menor =a
  --print (a, b, c)
end

if maior%2==0 and menor%2~=0 then
  print("Verdadeiro")
else
  print("Falso")
end

--2. Faça um programa que lê do usuário um caractere e informa se ele é uma vogal, uma consoante ou não é uma letra.

print("Digite um caractere")
a=io.read()
b = (tonumber(a))

if b == nil then  
  if a == "a" or a == "e" or a == "i" or a =="o" or a == "u" or a == "A" or a == "E" or a == "I" or a =="O" or a == "U" then
    print("Vogal")
  else
    print("consoante")
  end
else
  print("Não é uma letra")
end


--3. Desenvolva um programa que recebe do usuário o placar de um jogo de futebol (os gols de cada time) e informa se o resultado foi um empate, a vitória do primeiro time ou do segundo time.

print("Digite o placar do jogo")
a = io.read("*n")
b = io.read("*n")

if a==b then
  print("Empate")
elseif a>b then
  print("Vitoria do Primeiro Time")
elseif a<b then
  print("Vitoria do Segundo Time")
end
  


--4. Escreva um programa que lê do usuário 4 (quatro) números inteiros e informa se há ou não um deles no intervalo entre 1 e 25, outro de 26 a 50, outro de 51 a 75 e um último de 76 a 100

print("Digite um numero")
a= io.read("*n")
print("Digite um numero")
b= io.read("*n")
print("Digite um numero")
c= io.read("*n")
print("Digite um numero")
d= io.read("*n")

if a>=1 and a<=25 then
  print ("O primeiro numero está entre 1 e 25 ")
else
  print ("O primeiro numero não está entre 1 e 25 ")
end
if b>=26 and b<=50 then
  print ("O segundo numero está entre 26 e 50 ")
else
  print ("O segundo numero não está entre 26 e 50 ")
end 
if c>=51 and c<=75 then
  print ("O terceiro numero está entre 51 e 75 ")
else
  print ("O terceiro numero não está entre 51 e 75 ")
end
if d>=76 and d<=100 then
  print ("O quarto numero está entre 76 e 100 ")
else 
  print ("O quarto numero não está entre 76 e 100 ")
end


--5. Faça um programa que lê as três notas obrigatórias de uma disciplina e depois, apenas se necessário, lê as notas da reposição e final. O programa deve dar como saída as frases “Aprovado por média.”, “Aprovado na reposição”. “Aprovado na final.” ou “Reprovado.” respectivamente em cada uma dessas situações conforme a descrição anterior.

print("digite a primeira nota")
n1=io.read("*n")
print("digite o segunda nota")
n2=io.read("*n")
print("digite o terceira nota")
n3=io.read("*n")

media = ((n1 + n2 + n3)/3)

if media >=7 then
  print("Aprovado")
end
if media < 7 then
  print("Digite a nota da reposição")
  reposicao =io.read("*n")
  if n2>n1 and n3>n1 and reposicao>n1 then
    n1 = reposicao
  elseif n1>n2 and n3>n2 and reposicao>n2 then
    n2 = reposicao
  elseif n1>n3 and n2>n3 and reposicao>n3 then
    n3=reposicao
  end
end
  
media = ((n1 + n2 + n3)/3)

if media >=7 then
  print("Aprovado na reposição")
end
if media < 7 then
  print("Digite a nota da final")
  final =io.read("*n")
  
  if media + final >= 12 then
    print("Aprovado na Final")
  else
    print("Reprovado na Final")
  end
end



--6. Elabore um programa que recebe do usuário três cadeias de caracteres e informa VERDADEIRO se há pelo menos duas diferentes cadeias iguais aos valores 'azul', 'preto'ou 'vermelho' ou FALSO em caso contrário. Exemplos: {'azul', 'preto', 'branco'} é VERDADEIRO; {'azul', 'roxo', 'azul'} é FALSO; {'preto', vermelho', 'vermelho'} é VERDADEIRO.

print("digite a primeira cor")
a=io.read()
print("digite a primeira cor")
b=io.read()
print("digite a primeira cor")
c=io.read()


if ((a == "azul") or (a == "preto") or (a =="vermelho")) and ((b == "azul") or (b =="preto") or (b =="vermelho")) then
  print("Verdadeiro")

elseif ((a == "azul") or (a == "preto") or (a =="vermelho")) and ((c == "azul") or (c == "preto") or (c =="vermelho")) then
  print("Verdadeiro")

elseif ((b == "azul") or (b =="preto") or (b =="vermelho")) and ((c == "azul") or (c == "preto") or (c =="vermelho")) then
  print("Verdadeiro")
else
  print("Falso")
end



--7. Um aluno de computação está organizando um bolão de futebol. Segundo suas regras, os apostadores informam o placar do jogo e ganham 10 pontos se acertarem o vencedor ou se foi empate e ganham mais 5 pontos para o placar de cada time que acertarem. Exemplo: se o placar do jogo foi 3x2, são 0 pontos se o placar apostado foi 0x1; 5 pontos para os placares apostados 0x2 ou 3x5; 10 pontos para o placar apostado 1x0; ou 20 pontos para o placar exato de 3x2. Faça um programa que requisita do usuário o placar apostado e depois o placar do jogo e informa quantos pontos o apostador fez.

print("digite a quantidade de gols apostado")
a=io.read("*n")
b=io.read("*n")
--print("Digite o placar final")
c=3 --io.read("*n")
d=2 --io.read("*n")

usuario= 0

if a==c and b==d then
  if a==b and c==d then
    usuario = usuario + 10
  else
    usuario = usuario + 20
  end
end

if (a==c and b~=d) or (a~=c and b==d) then
  usuario = usuario +5
end
if a~=c and b~=d then
  if (a>b and c>d) or (a<b and c<d) then
    usuario = usuario +10
  else
    usuario = usuario + 0
  end
end

print (usuario)


--8. Em uma competição de saltos ornamentais, 6 (seis) juízes informam notas reais variando de 0 a 10. A nota final do atleta deve excluir a maior e a menor nota dos juízes e é composta pela soma das quatro demais notas. Faça um programa que lê do usuário as seis notas dos juízes e informa a nota final do atleta (a soma das notas excluindo a menor e a maior delas).

print("DIgite 6 notas")
a= io.read("*n")
b= io.read("*n")
c= io.read("*n")
d= io.read("*n")
e= io.read("*n")
f= io.read("*n")

menor = 10
maior = 0

--Menor
if a <= menor  then
  menor = a
end
if b<= menor then
  menor = b
end
if c<=menor then
  menor = c
end
if d<= menor then
  menor = d
end
if e <= menor then
  menor = e
end
if f <= menor then
  menor = f
end

--Maior
if a >= maior  then
  maior = a
end
if b >= maior  then
  maior = b
end
if c >= maior  then
  maior = c
end
if d >= maior  then
  maior = d
end
if e >= maior  then
  maior = e
end
if f >= maior  then
  maior = f
end

NotaFinal = a+b+c+d+e+f-maior-menor

print("")
print("Menor"..menor)
print("")
print("Maior"..maior)
print("")
print(NotaFinal)

--9. Faça um programa que requisita do usuário 5 (cinco) números inteiros e informa se pelo menos dois pares diferentes desses números são iguais. Exemplo: {3,4,4,5,3} e {1,2,2,1,2} tem 2 pares de números iguais mas {2,2,2,3,2} não tem 2 pares diferentes de números iguais.

print("DIgite 5 numeros")
a= io.read("*n")
b= io.read("*n")
c= io.read("*n")
d= io.read("*n")
e= io.read("*n")

iguais=0

if (a==b or a==c or a==d or a==e) then
  iguais = iguais + 1
  if (b==c or b==d or b==e) and (b~=a) then
    iguais = iguais + 1
  elseif (c==d or c==e) and (c~=a) and (c~=b) then
    iguais = iguais + 1
  elseif (d==e) and (d~=a) and (d~=b) and (d~=c) then
    iguais = iguais + 1
  end
  if iguais == 2 then
    print("Foram encontrados " ..iguais.. "pares")
  else
    print("Não foi encontrado o mínimo de dois pares")
  end
end


--10. Faça um programa que requisita do usuário 3 (três) números inteiros para apostar num bingo e depois requisita os 3 (três) inteiros que foram sorteados. Finalmente, o programa deve informar quantos números o usuário acertou no sorteio (0, 1, 2 ou 3 acertos).

print("DIgite 3 numeros inteiros para apostar")
a= io.read("*n")
b= io.read("*n")
c= io.read("*n")

print("Informe 3 numeros inteiros que foram sorteados")
d= io.read("*n")
e= io.read("*n")
f= io.read("*n")


pontos = 0
if a==d then
  pontos = pontos +1
elseif a==e then
  pontos = pontos +1
elseif  a==f then
  pontos = pontos +1
end

if b==d then
  pontos = pontos +1
elseif b==e then
  pontos = pontos +1
elseif  b==f then
  pontos = pontos +1
end

if c==d then
  pontos = pontos +1
elseif c==e then
  pontos = pontos +1
elseif  c==f then
  pontos = pontos +1
end


print ("Você Acertou:".. pontos)

]]