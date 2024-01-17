alter table `usuario` add `id_templo` INT NOT NULL COMMENT 'Código do Templo'
alter table `usuario` add `id_regiao` INT(11) NULL DEFAULT NULL COMMENT 'Código da Região';
alter table `usuario` add `id_grupo` INT(11) NULL DEFAULT NULL COMMENT 'Código do Grupo';

alter table `usuario` add `nivel_usuario` int(11) NOT NULL DEFAULT '1',

alter table `fiel`
 add `id_departamento` int NULL DEFAULT 0 COMMENT 'Departamento do Fiel no Templo',
 add `nomesocial` varchar(20) null COMMENT 'Nome de Sacerdócio/Apelido',
 add `chefefamilia` int NULL DEFAULT 0 COMMENT 'Indica se é Chefe da Família';
 
alter table `fieltmp` add `id_regiao` INT(11) NULL DEFAULT NULL COMMENT 'Código da Região';

ALTER TABLE fiel AUTO_INCREMENT=3648;

ALTER TABLE fieltmp AUTO_INCREMENT=315;