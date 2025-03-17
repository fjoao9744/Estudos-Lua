lista = {12, 54, 13, 1, -23}

local removido = table.remove(lista, 1)

print(lista)
print(removido)

--[[
table.foreachi(lista, func)
]]

table.foreachi(lista, function(valor)
    print(valor)
end)
