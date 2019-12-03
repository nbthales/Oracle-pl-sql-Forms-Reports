--command window
define nome_tabela = 'estoque';
select * from &nome_tabela;
append;
input;

--sql window
select * from estoque order by est_nome;
select * from estoque order by est_precovenda;
select * from estoque order by est_datacad;

select * from estoque;
