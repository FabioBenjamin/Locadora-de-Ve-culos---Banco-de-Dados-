-- Consulta 4: Agregações com GROUP BY 

select Usuario__TIPO,
	   count(*) as Quantidade_Usuario

from Usuario_

group by Usuario__TIPO;