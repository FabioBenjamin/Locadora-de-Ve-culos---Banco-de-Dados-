    -- Consulta 2: Join entre 2+ tabelas --
    select Usuario_.id_Usuario, 
            Usuario_.Nome_Completo, 
            Usuario_.CPF,
            Usuario_.Usuario__TIPO,
            Cidade.id_Cidade,
            Cidade.Nome_Cidade

    from Usuario_

    join Cidade on Usuario_.fk_Cidade_id_Cidade = Cidade.id_Cidade;