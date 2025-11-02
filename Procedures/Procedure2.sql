-- Procedure 2: Contagem de kilometragem após cada uso
-- Motivação: Para manter controle de uso dos veículos 
-- Parâmetros: 
	-- P_id_Veiculo = Identificar o ID do Veículo
	-- P_Km_Final = Kilometragem final após o uso do veiculo

delimiter $$

create procedure Contagem_Km (
	in P_id_Veiculo int,
    in P_Km_Final decimal(10,2)
)
begin 
	declare V_Km_Antigo decimal (10,2);
    
    select Km_Rodado into V_Km_Antigo
    from Veiculo
    where id_Veiculo = P_id_Veiculo;
    
    -- Validação para nao ter valor negativo
    if P_Km_Final < V_Km_Antigo then
			signal sqlstate '45000'
            set message_text = "Kilometragem final não pode ser menor que a kilometragem atual do veículo";
		end if;
    
    -- Atualiza os kilometragens que foram usados 
    update Veiculo
    Set Km_Rodado = P_Km_Final
    where id_Veiculo = P_id_Veiculo;
    
    insert into Historico_Km (id_Veiculo, Km_Registrado, Data_Registro)
    values (P_id_Veiculo, (P_Km_Final - V_Km_Antigo), curdate());
    
    -- Km rodado desde do último registro 
    select P_id_Veiculo as Veiculo,
		  (P_Km_Final - V_Km_Antigo) as Km_Usado;
    
end$$ 

delimiter ;