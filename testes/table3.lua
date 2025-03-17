lista = {}

-- Adiciona 5 itens
table.insert(lista, 12)
table.insert(lista, 54)
table.insert(lista, 13)
table.insert(lista, 1)
table.insert(lista, -23)

for chave, valor in pairs(lista) do
    print(chave, valor)
    
end

-- Tira 2 itens
table.remove(lista, 1)
table.remove(lista, 3)

for chave, valor in pairs(lista) do
    print(chave, valor)
    
end