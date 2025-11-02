-- Relatorio 1: Quantidade de usuários por tipo

-- Problema que responde:
	-- Relatorio feito para mostrar a quantidade existente por cada tipo de usuário
    -- (Cliente, Funcionario e Administrador).

-- Por que a escolha desta abordagem:
	-- Para agrupar os usuários utilizando as funções COUNT(*) e GROUP BY  
    -- Permitindo identificar o tipo do usuário de forma mais clama e eficiente
    
select Usuario__TIPO,
	   count(*) as Quantidade_Usuario

from Usuario_

group by Usuario__TIPO;
