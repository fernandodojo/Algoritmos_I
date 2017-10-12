--1ª Questão
print("Digite um numero n qualquer")
n = io.read("*n")
--m = 0
--m = n *n + n*2 +3

print(n*n + n*2 +3)

--2ª Questão
print("Digite 2 valores")
a = io.read("*n")
b = io.read("*n")

print(a>100 and b>100 or a<100 and b > 200 or a> 200 and b< 100)

--3ª Questão
print("Digite 5 numeros entre 1 e 13")
a,b,c,d,e = io.read("*n"),io.read("*n"),io.read("*n"),io.read("*n"),io.read("*n")


print((a==b and b==c and d~= c and d == e) or
 (b==c and c==d and e~= d and e == a) or
 (c==d and d==e and a~= e and a == b) or
 (d==e and e==a and b~= a and b == c) or
 (e==a and a==b and c~= b and c == d))

--4ª Questão
print("Informe o ano entre 2000 e 2019")
ano = io.read("*n")

if ano >= 2000 and ano <=2003 then
	print("Sidnei")
elseif ano >= 2004 and ano <=2007 then
	print("Atenas")
elseif ano >= 2008 and ano <=2011 then
	print("Pequim")
elseif ano >= 2012 and ano <=2015 then
	print("Londres")
elseif ano >= 2016 and ano <=2019 then
	print("Rio")
end

--5ª Qestão
print("Digite um 4 numeros")
a,b,c,d = io.read("*n"), io.read("*n"), io.read("*n"), io.read("*n")
quadrado = 0

if a~= b and a~= c and a~= d then
	x = math.sqrt(a)
	y = math.floor(x)
	if (y^2==a) then
		quadrado = quadrado + 1
	end
end
if b~= c and b~= d then
	x = math.sqrt(b)
	y = math.floor(x)	
	if (y^2==b) then		
		quadrado = quadrado + 1
	end
end
if c~= d then
	x = math.sqrt(c)
	y = math.floor(x)
	if (y^2==c) then
		quadrado = quadrado + 1
	end
end
x = math.sqrt(d)
y = math.floor(x)
if (y^2==d) then
	quadrado = quadrado + 1
end

print("A sequencia digitada contém: " .. quadrado.. " quadrados perfeitos.")

--6ª Questão
print("Digite um 5 numeros")
a,b,c,d,e = io.read("*n"), io.read("*n"), io.read("*n"), io.read("*n"), io.read("*n")

pares = 0

if a%2==0 then
	pares = pares + a
end
if b%2==0 then
	pares = pares + b
end
if c%2==0 then
	pares = pares + c
end
if d%2==0 then
	pares = pares + d
end
if e%2==0 then
	pares = pares + e
end

print("A sequencia contém: "..a%2 + b%2 + c%2 + d%2 + e%2 .." numeros ímpares e a soma de todos os pares é = ".. pares)

