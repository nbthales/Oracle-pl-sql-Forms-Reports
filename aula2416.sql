declare
  num number := 5;
  i   number := 1;
begin
  dbms_output.put_line('MANUAL');
  dbms_output.put_line(num || ' x 1 = ' || (num * 1));
  dbms_output.put_line(num || ' x 2 = ' || (num * 2));
  dbms_output.put_line(num || ' x 3 = ' || (num * 3));
  dbms_output.put_line(num || ' x 4 = ' || (num * 4));
  dbms_output.put_line(num || ' x 5 = ' || (num * 5));
  dbms_output.put_line(' ');

  dbms_output.put_line('COM LACO DE REPETICAO');
  while i <= 10 loop
    dbms_output.put_line(num || ' x ' || i || ' = ' || (num * i));
    i := i + 1;
  end loop;
end;
