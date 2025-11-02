-- DML da trigger 2: Validação do pagamento

-- Válido - Pagamento pendente
insert into pagamento_ (id_Pagamento, Valor, Metodo, Data_Pagamento, Status_Pagamento)
values
(1, 0, 'Pix', '2025-01-11', 'Pendente');

-- Inválido - Marcação de Pago sem valor
update pagamento_
set Status_Pagamento = 'Pago' -- Sem o valor
where id_Pagamento = 1;

-- Válido -- Definido valor antes de marcar como Pago
update pagamento_
set Valor = 1000.00, Status_Pagamento = 'Pago' -- Com o valor
where id_Pagamento = 1;

select id_Pagamento, Valor, Metodo, Data_Pagamento, Status_Pagamento
from pagamento_