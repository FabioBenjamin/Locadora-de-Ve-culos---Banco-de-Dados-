-- Relatorio 4: Funcionário com salário acima da média  
-- Problema que responde:
	-- Fazer a identificação dos funcionários que possuem salário maior que a média geral
    
-- Por que a escolha desta abordagem:
	-- Para saber quem possui o salário maior que a média geral utilizando uma subquery
    -- Filtrando apenas os funcionários que ultrapassam este valor.

select Nome_Completo,
	   Cargo, 
       Salario 

from Usuario_
where Cargo = 'Funcionario'
	and Salario > (select avg(Salario) from Usuario_ where Cargo = 'Funcionario')
order by Salario desc;
