lista = {12, 54, 13, 1, -23}

table.sort(lista)

for indice, valor in ipairs(lista) do
    print(indice, valor)
end

print(table.concat(lista, ", "))