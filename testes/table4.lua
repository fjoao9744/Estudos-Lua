lista = {12, 54, 13, 1, -23}

local removido = table.remove(lista, 1)

for indice, valor in ipairs(lista) do
    print(indice, valor)
end

print("item removido: " .. removido)

