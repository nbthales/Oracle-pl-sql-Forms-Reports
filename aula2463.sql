declare
  cursor cursor_estoque is select * from estoque order by 1;
  registro_estoque cursor_estoque%rowtype;
begin
  open cursor_estoque;
  loop
    fetch cursor_estoque into registro_estoque;
    exit when cursor_estoque%NOTFOUND;
    dbms_output.put_line('Código: ' || registro_estoque.est_codigo || ' Nome: ' || registro_estoque.est_nome);
  end loop;
  
  dbms_output.put_line('Quantidade de registros = '|| to_char(cursor_estoque%ROWCOUNT));
  close cursor_estoque;
end;