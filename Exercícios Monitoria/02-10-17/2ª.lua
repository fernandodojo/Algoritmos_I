-- Numero Nascisista

print ("Digite um numero de 3 digitos")

numero = io.read("*n")

function resto(a)
  b = a%10
  a = math.floor(a/10)
  c = a%10
  a = math.floor(a/10)
  d = a%10
  print(numero == (d^3 + c^3 + b^3))
  
  print (b, c, d)
    
end

print (resto(numero))