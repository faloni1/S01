local function somar(a, b) return a + b end
local function subtrair(a, b) return a - b end
local function multiplicar(a, b) return a * b end
local function dividir(a, b) 
    if b == 0 then return "Erro: Divisão por zero" end
    return a / b 
end

local function calculadora(n1, n2, operador)
    if operador == "+" then return somar(n1, n2)
    elseif operador == "-" then return subtrair(n1, n2)
    elseif operador == "*" then return multiplicar(n1, n2)
    elseif operador == "/" then return dividir(n1, n2)
    else return "Erro: Operador inválido"
    end
end

print("Digite o primeiro número:")
local num1 = tonumber(io.read())
print("Digite o segundo número:")
local num2 = tonumber(io.read())
print("Digite o operador (+, -, *, /):")
local op = io.read()

print("Resultado: " .. calculadora(num1, num2, op))
