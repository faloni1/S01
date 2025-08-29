function calculadora(a, b, operador)
    if operador == "+" then
        return a + b
    elseif operador == "-" then
        return a - b
    elseif operador == "*" then
        return a * b
    elseif operador == "/" then
        return a / b
    else
        return "Erro: operador inválido!"
    end
end

print("Digite o primeiro número:")
local a = tonumber(io.read())

print("Digite o segundo número:")
local b = tonumber(io.read())

print("Digite o operador:")
local operador = io.read()

local resultado = calculadora(a, b, operador)
print("= " .. resultado)
