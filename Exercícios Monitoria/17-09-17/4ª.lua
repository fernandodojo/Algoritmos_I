-- 4ª) Receba uma senha e imprima true se a senha informada estiver correta ou falsa se estiver errada
io.write("Digite a senha")
senha = io.read()

while (senha~= "senha12345") do
  io.write("Senha incorreta, Tente Novamente")
  senha = io.read()
end

print(senha == "senha12345")
