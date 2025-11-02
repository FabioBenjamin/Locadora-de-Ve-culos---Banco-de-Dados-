-- DML da trigger 1: Validação do CPF

-- Válido - Campo CPF preenchido
insert into Usuario_ (Email, Nome_Completo, Senha, Data_Nasc, CPF, id_Cliente, CNH, Cargo, id_Funcionario, id_Admin, Usuario__TIPO)
values 
('cpfvalido@email.com', 'CPF Válido', '123', '2025-05-10', '11122233344', 20, 'CNH12345678', 'Cliente', 120, 220, 1);

-- Inválido - Campo CPF vazio 
insert into Usuario_ (Email, Nome_Completo, Senha, Data_Nasc, CPF, id_Cliente, CNH, Cargo, id_Funcionario, id_Admin, Usuario__TIPO)
values 
('cpfvazio@email.com', 'CPF Vazio', '123', '2025-01-01', '', 21, 'CNH00000000', 'Cliente', 121, 221, 1);

-- Inválido - Campo CPF nulo
insert into Usuario_ (Email, Nome_Completo, Senha, Data_Nasc, CPF, id_Cliente, CNH, Cargo, id_Funcionario, id_Admin, Usuario__TIPO)
values 
('cpfnullo@email.com', 'CPF Nulo', '123', '2025-02-02', null, 22, 'CNH87654321', 'Cliente', 122, 222, 1);

select id_Usuario, Nome_Completo, CPF
from Usuario_;