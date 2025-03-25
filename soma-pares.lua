function soma_pares(lista)
  n = 0
  for i=1, #lista do
    if lista[i] % 2 == 0 then
      n = n + lista[i]
      print(lista[i])
      
    end
    
  end
  
  return n
end

print(soma_pares({8, 9, 1, 5, 12, 15, 14}))
