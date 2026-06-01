print("Digite o início do intervalo (M):")
local M = tonumber(io.read())
print("Digite o fim do intervalo (N):")
local N = tonumber(io.read())
print("Digite o número para a tabuada (X):")
local X = tonumber(io.read())

print("\nTabuada de " .. X .. " no intervalo de " .. M .. " a " .. N .. ":")
for i = M, N do
    print(X .. " x " .. i .. " = " .. (X * i))
end
