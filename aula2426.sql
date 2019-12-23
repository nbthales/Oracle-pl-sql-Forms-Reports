create or replace procedure excluir(codigo IN estoque.est_codigo%TYPE)
is
begin
  delete from estoque where est_codigo = codigo;
  dbms_output.put_line('Excluido com sucesso!');
end excluir;


--command window
SQL> execute grava_estoque(21, 'Video Aula C', 'un', 50, '10/06/2019');
SQL> execute excluir(21);
