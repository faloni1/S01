print("Digite a quantidade de números (N):")
local N = tonumber(io.read())
local tabelaOriginal = {}

for i = 1, N do
    print("Digite o valor " .. i .. ":")
    tabelaOriginal[i] = tonumber(io.read())
end

local function filtrarImpares(t)
    local impares = {}
    for i = 1, #t do
        if t[i] % 2 ~= 0 then
            table.insert(impares, t[i])
        end
    end
    return impares
end

local resultado = filtrarImpares(tabelaOriginal)
print("Números ímpares encontrados:")
for _, v in ipairs(resultado) do
    print(v)
end
