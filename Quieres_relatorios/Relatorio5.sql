-- Relatorio 5: Cidades com maior número de usuários cadastrados
-- Problema que responde:
	-- Mostrar as cidades com o maior número de usuários registrados no sistema
    
-- Por que a escolha desta abordagem:
	-- Para gerar um ranking de cidades e permitindo também a consolidação de dados
    -- Utiliza-se de GROUP BY e COUNT para fazer a junção de "Usuario_" e "Cidade"
    
select C.Nome_Cidade, 
	   count(U.id_Usuario) as Quantidade_Usuario

from Usuario_ as U

join Cidade as C on U.fk_Cidade_id_Cidade = C.id_Cidade

group by C.Nome_Cidade
order by Quantidade_Usuario desc;