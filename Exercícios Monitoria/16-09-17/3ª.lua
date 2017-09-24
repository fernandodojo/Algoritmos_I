--3ª) receba a base e a altura de um retangulo e imprima a área:

io.write ("Digite um numero para a base")
a = io.read("*n")
io.write ("Digite um numero para a altura")
b = io.read("*n")

function areatriangulo (a,b)
  return (a * b)/2
end

print (areatriangulo(a,b))
