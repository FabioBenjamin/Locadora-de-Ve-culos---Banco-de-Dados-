-- Relatorio 3: Usuário por tipo e as idades médias
-- Problema que responde:
	-- Faixeitaria média que cada tipo de usuário possui.
    
-- Por que a escolha desta abordagem:
	-- Utiliza a função AVG para saber a diferença entre a data atual 
    -- e a Data_Nasc dos usuários, fazendo agrupamento por tipo

select Usuario__TIPO, 
	   round( avg(timestampdiff(year, Data_Nasc, curdate())), 1) as Media_Idade

from Usuario_

group by Usuario__TIPO;