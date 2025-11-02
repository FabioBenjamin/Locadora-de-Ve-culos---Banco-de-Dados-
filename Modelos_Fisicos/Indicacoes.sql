-- Índices essenciais --

-- AGENCIA --
create index uniy_agencia on Agencia (Nome_Agencia);

--  LOCADORA --
create index uniy_agencia_retirada on Locacao_Seguro_ (Agencia_Retirada);
create index uniy_data_inicio on Locacao_Seguro_ (Data_Inicio);
create index uniy_data_fim on Locacao_Seguro_ (Data_Fim);
create index uniy_fk_pagamento on Locacao_Seguro_ (fk_Pagamento__id_Pagamento);

-- USUARIO -- 
create index uniy_nome_usuario on Usuario_ (Nome_Completo);
create index uniy_cargo_usuario on Usuario_ (Cargo);
create index uniy_fk_funcao on Usuario_ (fk_Funcao_id_Funcao);
create index uniy_fk_cidade on Usuario_ (fk_Cidade_id_Cidade);

-- MODELO --
create index uniy_nome_modelo on Modelo (Nome_Modelo);

-- TIPO VEICULO --
create index uniy_nome_tipo on Tipo_Veiculo (Nome_Tipo);

-- MARCA VEICULO --
create index uniy_nome_marca on Marca_Veiculo (Nome_Marca);

-- VEICULO --
create index uniy_statusVeiculo on Veiculo (statusVeiculo); 
create index uniy_frota on Veiculo (Frota);
create index uniy_km_rodado on Veiculo (Km_Rodado);

-- MULTA -- 
create index uniy_data_multa on Multa (Data_Multa);
create index uniy_valor_multa on Multa (Valor);

-- FUNCAO --
create index uniy_nome_funcao on Funcao (Nome_Funcao_);

-- CIDADE --
create index uniy_nome_cidade on Cidade (Nome_CIdade); 
create index uniy_bairro on Cidade (Bairro);

-- ESTADO --
create index uniy_regiao on Estado (Regiao);
create index uniy_fk_cidade on Estado (fk_Cidade_id_Cidade);

-- PAIS --
create index uniy_sigla on Pais (Sigla_);
create index uniy_fk_estado on Pais (fk_Estado_id_Estado);

-- HISTORICO KM -- 
create index uniy_km_registro on Historico_Km (Data_Registro);
create index uniy_data_registo on Historico_Km (Km_Registrado);

-- PERMISSÃO --
create index uniy_acoes on Permissao (Acoes(300)); 
create index uniy_recursos on Permissao (Recursos_(300));