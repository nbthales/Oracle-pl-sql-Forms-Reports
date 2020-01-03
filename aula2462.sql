declare
  cursor cursor_estoque is select * from estoque order by 1;
  registros_estoque cursor_estoque%ROWTYPE;
begin
  open cursor_estoque;
  fetch cursor_estoque into registros_estoque;
  dbms_output.put_line('Código: ' || registros_estoque.est_codigo);
  fetch cursor_estoque into registros_estoque;
  dbms_output.put_line('Código: ' || registros_estoque.est_codigo);
  
  dbms_output.put_line('Quantidade de registros: ' || to_char(cursor_estoque%ROWCOUNT));
end;