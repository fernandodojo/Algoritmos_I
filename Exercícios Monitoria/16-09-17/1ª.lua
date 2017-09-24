--1ª)Implemente um código que receba um numero e retorne ele invertido. Para numeros de até 6 digitos.


io.write(' Digite um numero positivo com no máximo 6 digitos') 
numero = io.read("*n")


i =1
while (i <= 6) do
 --print ("numero", numero)
 --print ("índice", i)
 --print ("resto", resto)
  if numero >= 0 then
    resto = numero %(10^i)
    numero = (numero - resto)
  end
  i = i+1
    
  if resto > 0 then
    print (resto/10^(i-2))
  end
end
