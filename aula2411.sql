create or replace procedure nota_aluno
is
  nota1 number;
  nota2 number;
  soma number;
  media number;
  nome varchar2(40);
begin
  nota1 := 8;
  nota2 := 10;
  nome := 'Thales Terra';
  soma := nota1 + nota2;
  media := soma / 2;
  dbms_output.put_line('Aluno: ' || nome);
  dbms_output.put_line('Soma: ' || soma);
  dbms_output.put_line('Media: ' || media);
end;

drop procedure nota_aluno;

select * from user_procedures;

--command window
SQL> set serveroutput on;
SQL> execute notas_aluno;
