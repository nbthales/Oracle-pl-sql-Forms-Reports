--command window
declare
  numero1 number := 8;
  numero2 number := 10;
  media number;
begin
  media := (numero1+numero2)/2; 
  :situacao := 'A soma eh ' || (numero1+numero2);
  :media := media;
end;

SQL> set serveroutput on;
SQL> variable situacao varchar2(40);
SQL> print situacao;
SQL> variable media number;
SQL> print media;
