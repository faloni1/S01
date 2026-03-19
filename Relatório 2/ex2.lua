print("Quantos valores deseja inserir?")
local N = tonumber(io.read())
local tabela = {}

for i = 1, N do
    print("Digite o valor " .. i .. ":")
    tabela[i] = tonumber(io.read())
end

local function buscarMaior(t)
    local maior = t[1]
    for i = 2, #t do
        if t[i] > maior then
            maior = t[i]
        end
    end
    return maior
end

print("O maior valor encontrado é: " .. buscarMaior(tabela))
