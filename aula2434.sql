select * from estoque;

update estoque set est_precovenda = 105 where est_codigo = 1;
update estoque set est_tipo = 'kg' where est_codigo = 5;

--command window
SQL> execute grava_estoque(15, 'Video Aula Linux', 'un', 80, '19/06/2009');
SQL> execute grava_estoque(15, 'Video Aula Linux', 'un', 101, '19/06/2009');
