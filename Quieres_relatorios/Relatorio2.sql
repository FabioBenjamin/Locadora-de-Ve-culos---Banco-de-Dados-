-- Relatorio 2: Usuário e suas cidades
-- Problema que responde:
	-- Saber qual cidade cada usuário está vinculada.

-- Por que a escolha desta abordagem:
	-- Para relacionar as informações usuário e localidade
    -- Utilia do JOIN entre as tabelas "Usuario_" e "Cidade"

select U.Nome_Completo,
	   U.CPF,
       C.Nome_Cidade
       
from Usuario_ as U

join Cidade as C on U.fk_Cidade_id_Cidade = C.id_Cidade
order by C.Nome_Cidade asc;