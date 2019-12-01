--command window
ed;
get novo_estoque;

define codigo = 4;
select * from estoque where est_codigo >= &codigo;

define nome = 'Video Aula Flex';
select * from estoque where est_nome like '&nome';

define codigo = 8;
define nome = 'Curso presencial Flex';
define tipo = 'un';
define valor = 800;
define data = '10/10/09';

get novo_estoque;
insert into estoque values (&codigo, '&nome', '&tipo', &valor, '&data');

--sql window
insert into estoque values(&codigo, &nome, &tipo, &valor, &data);

select * from estoque where est_codigo >= &codigo;

select * from estoque order by est_codigo;
