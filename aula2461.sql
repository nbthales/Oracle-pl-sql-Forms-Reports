declare
  id estoque.est_codigo%TYPE;
begin
  select est_codigo into id from estoque where est_precovenda = 50;
  dbms_output.put_line('Numero de elementos = ' || to_char(SQL%ROWCOUNT));
end;

/*
SQL%ROWCOUNT
SQL%FOUND
SQL%NOTFOUND
SQL%ISOPEN
*/