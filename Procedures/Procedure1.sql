 -- Procedure 1: Aplicação de multa por atraso de devolução 
 -- Motivação: Calcular a multa de atraso automaticamente e atualizar o status da locação  
 -- Parâmetros:
	-- P_id_Locacao = Identificar o ID da Locacao
	-- P_Data_Devolucao = Data posta para a devolução do veiculo
    
 delimiter $$
 
create procedure mul_Aplicacao_Multa(
    in P_id_Locacao int,
    in P_Data_Devolucao date
)
begin
    declare V_Data_Prevista date;
    declare V_Dias_Atraso int;

    select Data_Prevista_Devolucao into V_Data_Prevista
    from Locacao_Seguro_
    where id_Locacao = P_id_Locacao;

    -- Calculo de atraso
    set V_Dias_Atraso = datediff(P_Data_Devolucao, V_Data_Prevista);

    -- Atualizar multa caso tenha atraso 
    if V_Dias_Atraso > 0 then
        update Locacao_Seguro_
        set Valor_Multa = V_Dias_Atraso * 20  
        where id_Locacao = P_id_Locacao;
    end if;

end $$