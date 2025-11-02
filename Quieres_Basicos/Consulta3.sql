-- Consulta 3: Where com filtros
-- Listam apenas usuários do tipo 2 (Funcionário)
select id_Usuario, 
		Nome_Completo, 
        CPF, 
        Usuario__TIPO

from Usuario_

where Usuario__TIPO = 4;