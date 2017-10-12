--1 Peso por plane e gravidade
mercurio = 1
venos = 2
terra=3
marte=4
jupter=5
saturno=6

print("Digite o numero correspondente a um planeta")
n = io.read("*n")

print("Digite seu peso")
p = io.read("*n")

if p < 0  then
  print ("insira um numero positivo: ")
  p = io.read("*n")
end

if n == 1 then
  peso = ((p/10)*0.37)
  print(peso)
end

if n== 2 then
  peso = ((p/10)*0.88)
  print(peso)
end
if n== 3 then
  peso = ((p/10)*0.38)
  print(peso)
end
if n== 4 then
  peso = ((p/10)*2.64)
  print(peso)
end
if n== 5 then
  peso = ((p/10)*1.15)
  print(peso)
end
if n== 6 then
  peso = ((p/10)*1.17)
  print(peso)
end

