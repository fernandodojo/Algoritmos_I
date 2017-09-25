--2 - Crie um programa que receba um numero entre 1 e 7 e retorne o dia da semana correspondente. Se o usuário digitar um número fora do intervalo o programa deve exibir uma mensagem e pedir que o usuário digite outro número novamente.


print("digite um numero correpondente ao dia da semana")
n = io.read("*n")

while n<1 or n> 7 do
  print("Tente novamente digitando um numero entre 1 e 7")
  n = io.read("*n")
end

if n == 1 then
    print ("Segunda")
elseif n == 2 then
    print ("Terca")
elseif n == 3 then
    print ("Quarta")
elseif n == 4 then
    print ("Quinta")
elseif n == 5 then
    print ("Sexta")
elseif n == 6 then
    print ("Sabado")
elseif n == 7 then
    print ("Domingo")
end
