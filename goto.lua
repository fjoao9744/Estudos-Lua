function processar_dados()
    local sucesso, erro = pcall(function()
        -- Tente fazer algo arriscado
        error("Algo deu errado")
    end)

    if not sucesso then
        print("Erro:", erro)
        goto fim
    end

    print("Processamento bem-sucedido")

    ::fim::
    print("Fim da função")
end
processar_dados()
