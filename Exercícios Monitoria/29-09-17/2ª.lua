--2 tringulos
print("Digite o tamanho de um lado")
a = io.read("*n")
print("Digite o tamanho de um lado")
b = io.read("*n")
print("Digite o tamanho de um lado")
c = io.read("*n")
if  (( b + c) > a ) and (( a + c) > b) and (( a + b) > c) then
  if (a == b and a ~=c) or (a ==c and a ~=b) or (c ==b and b ~=a)then
      print("Isosceles")
  elseif a==b and b==c then
      print("Equilatero")
  elseif a~=b and b~= c then
      print("Escaleno")
  end
else
  print("Não existe")
end