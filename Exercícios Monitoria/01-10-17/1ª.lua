print("Digite numeros")
a = io.read("*n")
b= io.read("*n")
c= io.read("*n")


print("Digite numeros")
f = io.read("*n")
g = io.read("*n")
h = io.read("*n")

ponto = 0
if f ==g and g == h then
  ponto = 1
end

if (f == g and g ~= h) or (f ~= g and g == h) then
  if f == a or f == b or f == c then
    ponto = ponto + 1
  elseif g == a or g == b or g == c then
    ponto = ponto + 1
  elseif h == a or h == b or h == c then
    ponto = ponto + 1
  end
  ponto = ponto -1
end
  
if f ~= g and g ~= h then
  if f == a or f == b or f == c then
    ponto = ponto + 1
  elseif g == a or g == b or g == c then
    ponto = ponto + 1
  elseif h == a or h == b or h == c then
    ponto = ponto + 1
  end
end
  


if f ~= g and g ~= h then
  if f == a or f == b or f == c then
    ponto = ponto + 1
  elseif g == a or g == b or g == c then
    ponto = ponto + 1
  elseif h == a or h == b or h == c then
    ponto = ponto + 1
  end
end


print (ponto)