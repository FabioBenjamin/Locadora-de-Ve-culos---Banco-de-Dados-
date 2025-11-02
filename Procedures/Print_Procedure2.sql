call Contagem_Km(1, 350);   -- veículo 1001 rodou +350 km
call Contagem_Km(2, 120);   -- veículo 1002 rodou +120 km
call Contagem_Km(3, 480);   -- veículo 1003 rodou +480 km

select id_Veiculo, Placa, Km_Rodado
from Veiculo;

select * from Historico_Km