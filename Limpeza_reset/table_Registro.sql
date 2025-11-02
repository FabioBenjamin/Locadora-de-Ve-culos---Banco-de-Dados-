-- Deleta registros de tabelas dependentes 

DELETE FROM Historico_Km;
DELETE FROM locacao_seguro_;
DELETE FROM Pagamento_;
DELETE FROM Multa;
DELETE FROM Usuario_;
DELETE FROM Veiculo;
DELETE FROM Categoria;
DELETE FROM Funcao;
DELETE FROM Modelo;
DELETE FROM Marca_Veiculo;
DELETE FROM Tipo_Veiculo;
DELETE FROM Cidade;
DELETE FROM Estado;
DELETE FROM Pais;
DELETE FROM Adicionais;
DELETE FROM Permissao;
DELETE FROM Agencia;

-- Funcionalidade:
	-- Remove todos os dados manualmente (opcional se for usar DROP)