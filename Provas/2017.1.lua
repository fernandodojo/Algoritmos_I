--1 
print("Digite dois valores")
v1, v2 = io.read("*n", "*n")


if v2 > v1 and v2 ~= v1 then
  print(v2)
elseif v1~=v2 then
  print(v1)
end

--2
print("Digite a idade de cada um")
x,y = io.read("*n", "*n")

if (x> 18 and y < 12) or (y> 18 and x < 12)then
  print (true)
elseif (x >= 12 and x <=17) and (y >= 12 and y <=17) then
  print (true)
else 
  print (false)
end

--3
print("Informe 5 numeros")
n1, n2, n3, n4, n5 = io.read("*n", "*n", "*n", "*n", "*n")

s = 0
p = 1

if n1%2 == 0 then
  s = n1
  p = n1
end
if n2%2 == 0 then
  s = s + n2
  p = p * n2
end
if n3%2 == 0 then
  s = s+ n3
  p = p * n3
end
if n4%2 == 0 then
  s = s + n4
  p = p* n4
end
if n5%2 == 0 then
  s = s+ n5
  p = p * n5
end

print(s, p)

print (p > s)







