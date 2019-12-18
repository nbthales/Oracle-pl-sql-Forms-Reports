declare
  num number := 5;
  i number;
begin
  dbms_output.put_line(' ');
  
  dbms_output.put_line('Com laço de repetição FOR');
  for i in 1..10 loop
    dbms_output.put_line(num || ' * ' || i || ' = ' || (num*i));
    --if i = 7 then
    --  exit;
    --end if;
    exit when i = 7;
  end loop;
end;
