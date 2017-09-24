
-- 5ª Receba três notas, imprima a média e se o aluno foi aprovado ou não

io.write ("Digite a 1ª nota")
n1 = io.read("*n")
io.write ("Digite a 2ª nota")
n2 = io.read("*n")
io.write ("Digite a 3ª nota")
n3 = io.read("*n")


function media(a,b,c)
  m = (a + b + c)/3
  print (m, m >= 7)
  return m
end

media(n1,n2,n3)
