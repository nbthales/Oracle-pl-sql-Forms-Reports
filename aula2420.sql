select * from estoque;

/*declare
  nome_curso varchar2(40);
begin
  select est_nome into nome_curso from estoque where est_codigo = 4;
  dbms_output.put_line('Curso = ' || nome_curso);
end;*/

create or replace procedure pesquisa_curso(codigo IN number)
is
  nome_curso varchar2(40);
begin
  select est_nome into nome_curso from estoque where est_codigo = codigo;
  dbms_output.put_line('Curso = ' || nome_curso);
end;

--command window
SQL> set serverout on;
SQL> execute pesquisa_curso(4);
