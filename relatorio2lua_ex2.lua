function maior_valor(tabela)
    local maior = tabela[1]
    for i = 2, #tabela do
        if tabela[i] > maior then
            maior = tabela[i]
        end
    end
    return maior
end

local numeros = {}

print("Digite a quantidade de elementos nessa tabela: ")
local qtd = tonumber(io.read())

for i = 1, qtd do
    local num = tonumber(io.read())
    table.insert(numeros, num)
end

print("Maior: " .. maior_valor(numeros))
