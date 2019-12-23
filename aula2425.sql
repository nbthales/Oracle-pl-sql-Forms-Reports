create or replace procedure grava_estoque
(codigo IN estoque.est_codigo%TYPE,
 nome IN estoque.est_nome%TYPE,
 tipo IN estoque.est_tipo%TYPE,
 valor IN estoque.est_precovenda%TYPE,
 data IN estoque.est_datacad%TYPE)
is
begin
  insert into estoque values (codigo, nome, tipo, valor, data);
  dbms_output.put_line('Gravou Estoque com sucesso!');
end grava_estoque;

--command window
SQL> execute grava_estoque(20, 'Video Aula Acordeon', 'un', 50, '22/12/2019');
SQL> select * from estoque;
