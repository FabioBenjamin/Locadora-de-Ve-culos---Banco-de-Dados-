-- Trigger 2: Validação do pagamento

delimiter $$

create trigger vld_Valida_pagamento

before update on pagamento_
for each row begin
	if new.Status_Pagamento = 'Pago' then
		if new.Valor_Pago is null or new.Valor_Pago <= 0 then
			signal sqlstate 'error 5444'
            set message_text = "Valor não pago";
		end if;
	end if;
end$$