-- ALTER TABLES UTILIZADOS --

ALTER TABLE Historico_Km
ADD COLUMN id_Veiculo INT NOT NULL;

ALTER TABLE Historico_Km ADD CONSTRAINT FK_HistoricoKm_Veiculo
	FOREIGN KEY (id_Veiculo) 
    REFERENCES Veiculo(id_Veiculo)
	ON DELETE RESTRICT;

ALTER TABLE Locacao_Seguro_ ADD CONSTRAINT FK_Locacao_Seguro__2
    FOREIGN KEY (fk_Pagamento__id_Pagamento)
    REFERENCES Pagamento_ (id_Pagamento)
    ON DELETE RESTRICT;
 
ALTER TABLE Usuario_ ADD CONSTRAINT FK_Usuario__2
    FOREIGN KEY (fk_Funcao_id_Funcao)
    REFERENCES Funcao (id_Funcao)
    ON DELETE RESTRICT;

 
ALTER TABLE Usuario_ ADD CONSTRAINT FK_Usuario__3
    FOREIGN KEY (fk_Cidade_id_Cidade)
    REFERENCES Cidade (id_Cidade)
    ON DELETE RESTRICT;
 
ALTER TABLE Estado ADD CONSTRAINT FK_Estado_2
    FOREIGN KEY (fk_Cidade_id_Cidade)
    REFERENCES Cidade (id_Cidade)
    ON DELETE RESTRICT;
 
ALTER TABLE Pais ADD CONSTRAINT FK_Pais_Estado
	FOREIGN KEY (fk_Estado_id_Estado)
	REFERENCES Estado(id_Estado)
	ON DELETE RESTRICT;
    
ALTER TABLE locacao_seguro_ 
MODIFY COLUMN Data_Prevista_Devolucao DATE DEFAULT NULL;