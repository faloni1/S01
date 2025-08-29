function filtrar_pares(tabela)
    local pares = {}
    for i = 1, #tabela do
        if tabela[i] % 2 == 0 then
            table.insert(pares, tabela[i])
        end
    end
    return pares
end

local numeros = {}

print("Digite a quantidade de elementos nessa tabela: ")
local qtd = tonumber(io.read())

for i = 1, qtd do
    local num = tonumber(io.read())
    table.insert(numeros, num)
end

local pares = filtrar_pares(numeros)

if #pares == 0 then
    print("Nenhum par foi encontrado.")
else
    print("Pares:")
    for i = 1, #pares do
        print(pares[i])
    end
end
