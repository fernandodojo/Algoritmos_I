--1- Crie um program que receba um intervalo(assumindo que o inicio nunca será maior q o fim) e retorne a quantidade de numeros pares dentro do intervalo.

print("Digite dois numeros delimitadores de um intervalo")
a = io.read("*n")
b = io.read("*n")

pares=0
while a>b do
  print("digite o inicio do intervalo menor q o último numero do intervalo")
  a = io.read("*n")
  b = io.read("*n")
end
for i = a, b do
  if i%2==0 then
    pares = pares +1
  end
end

print("Estes intervalo possui", pares, "numeros pares.")
