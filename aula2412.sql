create or replace procedure nota_aluno
is
  nota1 number;
  nota2 number;
  soma number;
  media number;
  nome varchar2(40);
begin
  nota1 := 5;
  nota2 := 5;
  nome := 'Thales Terra';
  soma := nota1 + nota2;
  media := soma / 2; 
  if media >= 6 then
    dbms_output.put_line('O aluno ' || nome || ' ficou com media ' ||
    media || ' e foi Aprovado!');
  else
    dbms_output.put_line('O aluno ' || nome || ' ficou com media ' ||
    media || ' e foi Reprovado!');
  end if;
end;

--command window
SQL> set serveroutput on;
SQL> execute notas_aluno;
