DROP PROCEDURE `sp_inclui_fiel_cargo`; 
CREATE DEFINER=`siste075`@`localhost` PROCEDURE `sp_inclui_fiel_cargo`(IN `vtemplo` INT, IN `vdepartamento` INT, IN `vcargo` INT, IN `vfiel` INT, IN `vdatai2` DATE, IN `vdataf2` DATE) COMMENT 'Inclui Cargos de Fieis no Templo' NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
if exists(select id_tempplo from fiel_cargo id_tempplo = 8) then
   begin
     select 'Já Existe!'
   end;
else
   begin
     select 'Não Existe!'
   end;
end if;

if EXISTS(
    select id_tempplo from fiel_cargo id_tempplo = 8
)
then select 'encontrado!'
else select 'não encontrado'
END IF

INSERT INTO fiel_cargo (
	id_templo,
	id_departamento,
	id_cargo,
	id_fiel, 
	data_inicio, 
	data_fim, 
	situacao_fiel_cargo
)
VALUES (
    vtemplo,
    vdepartamento,
    vcargo,
    vfiel,
    vdatai2,
    vdataf2,
    'A'
)