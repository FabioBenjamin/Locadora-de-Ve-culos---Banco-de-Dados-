-- Valores máximos e mínimos de colunas cruciais 
	-- Utiliza as funções "MAX" e "MIN" que pega os valores maximos e mínimos

-- Kilometragem --
select max(Km_Rodado) as Km_Maximo,
	   min(Km_Rodado) as Km_Minimo 
       from Veiculo;

	-- Faz a verificação dos km mais altos e dos mais baixos dos veículos

-- Valor Pagamentos --
select max(Valor) as Pagamento_Max,
	   min(Valor) as Pagamento_Min
       from Pagamento_;

	-- Valor dos pagamentos registrados

-- Valor Multa --
select max(Valor) as Multa_Max,
	   min(Valor) as Multa_Min
       from Multa;
       
	-- Valores de multas aplicadas nas locações -- 