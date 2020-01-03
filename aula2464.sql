declare
  contador number := 0;
begin
  <<inicio>>
    contador := contador +1;
    if contador < 10 then
      goto inicio;
    end if;
  dbms_output.put_line('Contador: ' || to_char(contador));
end;