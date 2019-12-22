create or replace procedure pesquisa_curso
--(codigo IN number)
  (codigo IN estoque.est_codigo%TYPE,
   nome_curso OUT estoque.est_nome%TYPE,
   preco OUT estoque.est_precovenda%TYPE)
is
--nome_curso varchar2(40);
--nome_curso OUT estoque.est_nome%TYPE;
begin
  select est_nome, est_precovenda into nome_curso, preco from estoque where est_codigo = codigo;
  dbms_output.put_line('Curso = ' || nome_curso);
  dbms_output.put_line('Preco = ' || preco);
end;

select * from estoque;

--command window
SQL> variable nome_curso varchar2(40);
SQL> execute pesquisa_curso(6,:nome_curso);

SQL> variable preco number;
SQL> execute pesquisa_curso(3, :nome_curso, :preco);
