select * from user_procedures;

create or replace procedure soma_com_parametros
(numero1 IN number, numero2 IN number)
is
--  numero1 number;
--  numero2 number;
begin
--  numero1 := 8;
--  numero2 := 10;
  dbms_output.put_line('A soma é ' || (numero1+numero2));
end;

--command window
SQL> set serveroutput on;
SQL> execute soma_com_parametros(1, 2)
