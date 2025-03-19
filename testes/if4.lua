function verificar_acesso(idade, acesso)
    if idade >= 18 and acesso then
        print("Acesso liberado")

    elseif idade >= 18 and not acesso then
        print("Acesso negado")

    elseif idade < 18 then
        print("Acesso negado")

    end
end

verificar_acesso(24, true)
verificar_acesso(15, true)
verificar_acesso(19, false)
verificar_acesso(13, false)
