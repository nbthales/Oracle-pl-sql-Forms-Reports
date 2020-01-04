declare
  contador number := &numero;
begin
  <<inicio>>
  contador := contador +1;
  if contador <= 10 then
    dbms_output.put_line('Contador: ' || contador);
    goto inicio;
  else
    goto fim;
  end if;
  
  <<fim>>
  dbms_output.put_line('Fim.');
  
end;