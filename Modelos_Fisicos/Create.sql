CREATE TABLE Adicionais (
    Nome_Adicionais varchar(255) NOT NULL UNIQUE,
    id_Adicionais int PRIMARY KEY NOT NULL auto_increment,
    Descricao text,
    Disponibilidade enum('disponivel', 'indisponivel') NOT NULL
);

CREATE TABLE Agencia (
    id_Agencia int PRIMARY KEY NOT NULL auto_increment,
    Nome_Agencia varchar(255) NOT NULL,
    Num_Agencia int NOT NULL UNIQUE
);

CREATE TABLE Categoria (
    Tipos_Categorias varchar(255) NOT NULL UNIQUE,
    id_Categoria int PRIMARY KEY NOT NULL auto_increment
);

CREATE TABLE Cidade (
    Num_Casa int NOT NULL UNIQUE,
    Bairro varchar(255) NOT NULL,
    id_Cidade int PRIMARY KEY NOT NULL auto_increment,
    CEP char(8) NOT NULL UNIQUE,
    Nome_CIdade varchar(255) NOT NULL UNIQUE,
    Complemento varchar(50)
);

CREATE TABLE Estado (
    id_Estado int PRIMARY KEY NOT NULL auto_increment,
    Nome_Estado varchar(255) NOT NULL UNIQUE,
    Regiao varchar(255) NOT NULL,
    fk_Cidade_id_Cidade int
);

CREATE TABLE Funcao (
    id_Funcao int PRIMARY KEY NOT NULL auto_increment,
    Descricao text NOT NULL,
    Nome_Funcao_ varchar(255) NOT NULL UNIQUE
);

CREATE TABLE historico_km (
    id_Km INT PRIMARY KEY auto_increment,
    Km_Registrado decimal(10,2) NOT NULL,
    Data_Registro date NOT NULL
);

CREATE TABLE locacao_seguro_ (
    id_Locacao int NOT NULL auto_increment,
    id_Cliente int NOT NULL,
    id_Veiculo int NOT NULL,
    Data_Prevista_Devolucao date NOT NULL,
    Data_Devolucao date not null,
    Data_Fim date NOT NULL,
    Data_Inicio date NOT NULL,
    Valor_Multa decimal(10,2) DEFAULT 0.00,
    Agencia_Retirada varchar(255),
    id_Seguro int NOT NULL,
    Valor decimal(10,2) NOT NULL,
    fk_Pagamento__id_Pagamento INT,
    PRIMARY KEY (id_Locacao, id_Seguro)
);


CREATE TABLE Marca_Veiculo (
    Nome_Marca varchar(255) NOT NULL UNIQUE,
    id_Marca int PRIMARY KEY NOT NULL auto_increment
);

CREATE TABLE Modelo (
    Nome_Modelo varchar(255) NOT NULL UNIQUE,
    id_Modelo int PRIMARY KEY NOT NULL auto_increment
);

CREATE TABLE Multa (
    id_Multa int PRIMARY KEY NOT NULL auto_increment,
    Motivo_Multa text NOT NULL,
    Valor decimal NOT NULL,
    Data_Multa datetime NOT NULL
);

CREATE TABLE Pagamento_ (
    id_Pagamento int auto_increment PRIMARY KEY,
    Valor decimal(10,2) NOT NULL,
    Data_Pagamento date NOT NULL,
    Metodo varchar(50) NOT NULL,
    Status_Pagamento enum('Pago', 'Pendente') NOT NULL
);

CREATE TABLE Pais (
    id_Pais int PRIMARY KEY NOT NULL auto_increment,
    Sigla_ char(3) NOT NULL UNIQUE,
    Nome_Pais varchar(255) NOT NULL UNIQUE,
    fk_Estado_id_Estado int
);

CREATE TABLE Permissao (
    Acoes blob NOT NULL,
    Recursos_ blob NOT NULL,
    id_Permissoes int PRIMARY KEY NOT NULL auto_increment
);

CREATE TABLE Tipo_Veiculo (
    id_Tipo int PRIMARY KEY NOT NULL auto_increment,
    Nome_Tipo varchar(200) NOT NULL UNIQUE
);

CREATE TABLE Usuario_ (
    Email varchar(255) NOT NULL UNIQUE,
    Nome_Completo varchar(255) ,
    Senha varchar(255) NOT NULL,
    id_Usuario int NOT NULL auto_increment,
    Data_Nasc date NOT NULL,
    CPF char(11) NOT NULL UNIQUE,
    id_Cliente int NOT NULL,
    CNH char(11) NOT NULL UNIQUE,
    Cargo varchar(255) NOT NULL,
    id_Funcionario int NOT NULL,
    id_Admin int NOT NULL,
    Usuario__TIPO INT NOT NULL,
    Salario DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    fk_Funcao_id_Funcao int,
    fk_Cidade_id_Cidade int,
    PRIMARY KEY (id_Usuario, id_Cliente, id_Funcionario, id_Admin)
);

CREATE TABLE Veiculo (
    id_Veiculo int PRIMARY KEY auto_increment,
    Frota int NOT NULL,
    Placa char(7) NOT NULL UNIQUE,
    Km_Rodado decimal(10,2) NOT NULL,
    StatusVeiculo enum('Disponível','Indisponível') NOT NULL,
    fk_Categoria_id_Categoria int NOT NULL,
    FOREIGN KEY (fk_Categoria_id_Categoria) REFERENCES Categoria(id_Categoria)
);