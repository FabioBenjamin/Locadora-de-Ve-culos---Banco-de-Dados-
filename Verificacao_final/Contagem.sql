-- Contagem de registros por tabela 
	-- Utiliza a função "COUNT(*)" para contar

select count(*) as Total_Locacoes from Locacao_Seguro_;
	-- Total de locações registradas no sistema 
    
select count(*) as Total_Veiculos from Veiculo;
	-- Total de veículos registrados no sistemas
    
select count(*) as Total_Historico_Km from Historico_Km;
	-- Total de km inseridos no registro do sistemas
    
select count(*) as Total_Multas from Multa;
	-- Total de multas aplicadas foram registradas no sistemas
    
select count(*) as Total_Agencia from Agencia;
	-- Total de agências registradas no sistemas
    
select count(*) as Total_Usuarios from Usuario_;
	-- Total de usuários registrados no sistemas
    
select count(*) as Total_Pagamentos from Pagamento_;
	-- Total de pagamento efetuados registrados no sistemas
    
   select count(*) as Total_Categorias from Categoria;
	-- Total de categorias existentes no sistemas 
    
select count(*) as Total_Cidade from Cidade;
	-- Total de cidades registradas no sistemas