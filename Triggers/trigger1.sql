-- Trigger 1: Validação de CPF antes de adiciona-lo a um usuário

delimiter $$

create trigger vld_Valida_cpf 

before insert on Usuario_ 
for each row begin 
	if new.CPF is null or new.CPF = ' ' then 
		signal sqlstate 'error 4555'
        set message_text = "CPF não pode estar vazio";
	end if;
end; 
