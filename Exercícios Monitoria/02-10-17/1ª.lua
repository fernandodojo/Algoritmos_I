--Numero inverso
print ("Digite um numero")

a = io.read("*n")

function resto(a)
  b = (a%10)
  c = (a%100-b)/10
  d = ((a%1000-b)-(c*10))/100
  e = ((((a%10000-b)-(c*10))/100)-d)/10
  print (b..c..d..e)
end
  
print (resto(a))