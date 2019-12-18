create or replace procedure tabuada_parametro(num IN number)
is
  i number := 1;
begin
  while i <= 10 loop
    dbms_output.put_line(num || ' * ' || i || ' = ' || (num * i));
    i := i +1;
  end loop;
end;

drop procedure tabuada;
select * from user_procedures;

--command window
SQL> set serveroutput on;
SQL> execute tabuada_parametro(7);
