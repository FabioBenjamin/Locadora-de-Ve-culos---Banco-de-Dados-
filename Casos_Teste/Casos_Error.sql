-- Cenário C: Funcionário com salário negativo
	-- Objetivo: Testar se o sistema valida corretamente o valor do salário, impedindo valores negativos
		-- O erro que aparecera é o 'error code: 3819', mas ao parecer mostrará que está correto, (1)
		-- pois este erro impede valores negativos no campo 'Salario' como feito no alter table usuario_ (erro esperado e totalmente coerente, (2)
    
insert into Usuario_ (Nome_Completo, Email, Senha, Data_Nasc, CPF, id_Cliente, CNH, Cargo, id_Funcionario, id_Admin, Usuario__TIPO, fk_Funcao_id_Funcao, Salario)
values
('João Salário Positivo', 'joao.negativo@email.com', 'senha123', '1990-01-01', '12345678911', 1, 'ABC12345678', 'Funcionario', 101, 201, 2, 2, -1500.00); -- error 3819

-- Cenário D: Veiculo sem categoria 
	-- Objetivo: Testar se o sistema exige categoria vinculada em veiculo

insert into Veiculo (id_Veiculo, Frota, Placa, Km_Rodado, StatusVeiculo, fk_Categoria_id_Categoria)
values 
(10, 2001, 'JKL9876', 15000.00, 'Disponível', null), -- com valor null no fk_Categoria_id_Categoria (erro de integridade, pois nao pode ser 'null' o valor)