-- Verificação de integridade 
	-- Utiliza as funções "JOIN" para combinar dados
    -- "GROUP BY" para agrupar os resultados
    -- "HAVING" para filtrar os grupos criados 
    -- "COUNT(*)" para contar os registros de cada grupo
    
-- Verifica locações com data de devolução anterior à data de início 
select id_Locacao, Data_Inicio, Data_Devolucao
from Locacao_Seguro_
where Data_Devolucao < Data_Inicio; 

	-- Garante que não haja devoluções antes do início
    
-- Verifica os veículos que estão locados, mas com marcação de disponíveis 
	-- l = locadora
	-- v = veiculo
    
select v.id_Veiculo, 
    v.Placa, 
    v.StatusVeiculo, 
    l.id_Locacao
from Veiculo v
join Locacao_Seguro_ l on v.id_Veiculo = l.id_Veiculo
where v.StatusVeiculo = 'Disponível' and l.Data_Devolucao is null;

    
    -- Identifica veículos que estão com locação ativa
    
-- Usuário com CPF duplicado
select CPF, count(*) as Duplicacao_CPF
from Usuario_
group by CPF
having count(*) > 1;

	-- Evita as duplicações de CPF no banco de dados

-- Histórico de Km sem veículo válido
		-- v = Veiculo
        -- h = Historico_Km
select h.id_Km, h.id_Veiculo
from Historico_Km h
left join Veiculo v on h.id_Veiculo = v.id_Veiculo
where v.id_Veiculo is null;

	-- Históricos de km vinculado a veículo existente