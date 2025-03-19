--[[
generico:
for chave, valor in iterador(pairs e ipairs) do
    -- codigo
end

]]--

t1 = {nome="joao", idade=18}
t2 = {13, 40, 20, 1, -3, 50}


for chave, valor in pairs(t1) do
    print(chave, valor)
end

for indice, valor in ipairs(t2) do
    print(indice, valor)
end