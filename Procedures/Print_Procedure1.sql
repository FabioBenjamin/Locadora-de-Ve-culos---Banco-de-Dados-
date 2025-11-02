-- Chamada da procedure para calcular multa
call mul_Aplicacao_Multa(101, '2025-11-06'); 
call mul_Aplicacao_Multa(102, '2025-10-30');  
call mul_Aplicacao_Multa(103, '2025-11-04'); 

select id_Locacao, Data_Prevista_Devolucao, Data_Devolucao, Valor_Multa
from Locacao_Seguro_;
delimiter ;