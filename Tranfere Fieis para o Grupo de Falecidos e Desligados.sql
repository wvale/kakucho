
use siste075_hbs;

/*-----Cria Tabela Backup Fiel em Produção----*/
CREATE TABLE fiel_backup SELECT * FROM fiel where 1;


/*--------Transfere Fieis Falecidos para o Grupo Antepassados-----------------------*/
update fiel fil
set id_regiao = (select gr.id_regiao from grupo gr where gr.id_templo = fil.id_templo and gr.nome_grupo = 'Antepassados'),
    id_grupo =  (select id_grupo from grupo gr where gr.id_templo = fil.id_templo and gr.nome_grupo = 'Antepassados')
where data_falecimento_fiel > '0000-00-00 00:00:00'
and registro_ativo = 'S'


/*--------Transfere Fieis Desligados para o Grupo Desligados-----------------------*/
update fiel fil
set id_regiao = (select gr.id_regiao from grupo gr where gr.id_templo = fil.id_templo and gr.nome_grupo = 'Desligados'),
    id_grupo =  (select id_grupo from grupo gr where gr.id_templo = fil.id_templo and gr.nome_grupo = 'Desligados')
where data_desligamento_fiel > '0000-00-00 00:00:00'
and registro_ativo = 'S'
