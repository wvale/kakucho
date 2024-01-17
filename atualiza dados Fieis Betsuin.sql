/*
select (select id_cargo from cargo car where car.nome_cargo=tmp.Cargo1) as id_cargo
from fieltmp tmp
where codigo = 2
*/

/*Atualiza Cargos*/
update fieltmp tmp
set id_cargo = (select id_cargo from cargo car where car.nome_cargo=tmp.Cargo1)
where 1;

/*Atualiza Grupos*/
update fieltmp tmp
set id_grupo = (select id_grupo from grupo grp where grp.nome_grupo = tmp.grupo)
where 1;

/*Atualza Profissões*/
/*Sacerdote*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Sacerdote' LIMIT 1)
where tmp.Profissao = 'Sacerdote';

/*Aposentado(a)*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Aposentado(a)' LIMIT 1)
where tmp.Profissao in('Aposentado','Aposentada');

/*Do Lar*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = tmp.Profissao LIMIT 1)
where tmp.Profissao = 'Do Lar';

/*Estudante*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = tmp.Profissao LIMIT 1)
where tmp.Profissao = 'Estudante';

/*Medico*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Medico(a)' LIMIT 1)
where tmp.Profissao in('Medico','médica');

/*Cabelereira*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Cabelereiro(a)' LIMIT 1)
where tmp.Profissao in('Cabelereira','cabelereira');

/*comerciante*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Comerciante' LIMIT 1)
where tmp.Profissao in('comerciante','Comerciante');

/*Mecânico de Moto*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'MecÃ¢nico' LIMIT 1)
where tmp.Profissao = 'Mecânico de Moto';

/*Autônomo*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Autônomo' LIMIT 1)
where tmp.Profissao = 'Autonomo';

/*Func.Publico*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Func.Publico' LIMIT 1)
where tmp.Profissao in('Func.Publico','Func.Pública','Func. Público');

/*Dentista*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Dentista ' LIMIT 1)
where tmp.Profissao in('Dentista','Cir.Dentista','odontologa');

/*Torneiro Mecânico*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Torneiro Mecânico' LIMIT 1)
where tmp.Profissao = 'Torneiro Mecanico';

/*Engenheiro(a)*/
update fieltmp tmp
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Engenheiro(a)' LIMIT 1)
where tmp.Profissao in('Engenheira','Engenheiro Agrônomo','Engenheiro','Eng.Eletrico','Eng.Mecanico');

/*Administrador(a)*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Administrador(a)' LIMIT 1)
where tmp.Profissao in('Administrador','Administração','Administradora');

/*Analista*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Analista' LIMIT 1)
where tmp.Profissao in('Analista de Sistema','Analista','Analista Adm.','analista de RH');

/*Fisioterapeuta*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Fisioterapeuta' LIMIT 1)
where tmp.Profissao = 'Fisioterapeuta';

/*Comerciante*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Comerciante' LIMIT 1)
where tmp.Profissao = 'Comerciante';

/*Assistente Social*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Assistente' LIMIT 1)
where tmp.Profissao in('Assistente Social','Assist.Contábil','Assist.coml.','Assist.vendas');

/*Gerente Comercial*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Gerente Comercial' LIMIT 1)
where tmp.Profissao = 'Gerente Comercial';

/*Vendedor(a)*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Vendedor(a)' LIMIT 1)
where tmp.Profissao = 'Vendedora';

/*Balconista*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Balconista' LIMIT 1)
where tmp.Profissao = 'Balconista';

/*Caixa*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Caixa' LIMIT 1)
where tmp.Profissao = 'Caixa';

/*Agente de Apoio*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Agente de Apoio' LIMIT 1)
where tmp.Profissao = 'Agente de Apoio';

/*Aux. Escritório*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Aux. Escritório' LIMIT 1)
where tmp.Profissao in('Aux.escritório','Aux. Escritorio');

/*Aeroviário(a)***/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Aeroviário(a)' LIMIT 1)
where tmp.Profissao in('Aeroviário','Aeroviária');

/*Nutricionista*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Nutricionista' LIMIT 1)
where tmp.Profissao = 'Nutricionista';

/*Aux.Eletricista*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Aux.Eletricista' LIMIT 1)
where tmp.Profissao = 'Aux.Eletricista';

/*Esteticista*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Esteticista' LIMIT 1)
where tmp.Profissao = 'Esteticista';

/*Agente Reservas*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Agente Reservas' LIMIT 1)
where tmp.Profissao = 'Agente Reservas';

/*Tec.Eletrônico*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Tec.Eletrônico' LIMIT 1)
where tmp.Profissao = 'Tec.Eletrônico';

/*Supervisor*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Supervisor' LIMIT 1)
where tmp.Profissao = 'Supervisor';

/*Metalurgico*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Metalúrgico' LIMIT 1)
where tmp.Profissao = 'Metalurgico';

/*Coord.Eventos*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Coord.Eventos' LIMIT 1)
where tmp.Profissao = 'coord.Eventos';

/*Bacharel Direito*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Bacharel Direito' LIMIT 1)
where tmp.Profissao = 'Bacharel Direito';

/*Feirante*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Feirante' LIMIT 1)
where tmp.Profissao = 'feirante';

/*Doméstica*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Doméstica' LIMIT 1)
where tmp.Profissao = 'domestica';

/*Arquiteta*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Arquiteto(a)' LIMIT 1)
where tmp.Profissao = 'Arquiteta';

/*Advogado(a)*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Advogado(a)' LIMIT 1)
where tmp.Profissao in('Advogado','Advogada');

/*Radialista*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Radialista' LIMIT 1)
where tmp.Profissao = 'Radialista';

/*empresário(a)*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'empresário(a)' LIMIT 1)
where tmp.Profissao = 'empresário';

/*Tec.Enfermagem*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Tec.Enfermagem' LIMIT 1)
where tmp.Profissao = 'Tec.Enfermagem';

/*Operador(a) Caixa*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Operador(a) Caixa' LIMIT 1)
where tmp.Profissao = 'op. Caixa';

/*Policial*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Policial' LIMIT 1)
where tmp.Profissao = 'policial';

/*Op. Telemarketing*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Op. Telemarketing' LIMIT 1)
where tmp.Profissao = 'Op. Telemarketing';

/*projetista*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'projetista' LIMIT 1)
where tmp.Profissao = 'projetista';

/*Contador(a)*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Contador(a)' LIMIT 1)
where tmp.Profissao = 'contador';

/*Professor(a)*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Professoro(a)' LIMIT 1)
where tmp.Profissao in('prof.artes/tradutora','Professora');

/*Escrevente Técnico*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Escrevente Técnico' LIMIT 1)
where tmp.Profissao = 'escrevente tecnico';

/*Tec.Análise Clínica*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Tec.Análise Clínica' LIMIT 1)
where tmp.Profissao = 'tec.análise clínica';

/*Aeroportuário*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Aeroportuário' LIMIT 1)
where tmp.Profissao = 'Aeroportuário';

/*Enfermeira*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Enfermeira' LIMIT 1)
where tmp.Profissao = 'enfermeira';

/*Repres.Coml.*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Repres.Coml.' LIMIT 1)
where tmp.Profissao = 'repres.coml.';

/*Vendedor*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Vendedor' LIMIT 1)
where tmp.Profissao = 'Vendedor';

/*Tesoureiro*/
update fieltmp tmp 
set id_profissao_fiel = (select id_profissao_fiel from profissao_fiel pro where pro.nome_profissao_fiel = 'Tesoureiro(a)' LIMIT 1)
where tmp.Profissao = 'Tesoureiro';