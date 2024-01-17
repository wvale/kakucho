
-- Após incluir um Sacerdote/Bispo na Tabela Fiel, o mesmo será incluído na tabela Fiel_Cargo para ser utilizado na Tabela Templos
DELIMITER $$
create trigger tr_fiel_cargo_insert after insert on fiel
begin
	insert into fiel_cargo(id_fiel,id_cargo,situacao_cargo) values(new.id_fiel,new.id_cargo,'A');
end;
$$
DELIMITER ;