declare
  dados_estoque estoque%rowtype;
begin
  select * into dados_estoque from estoque where est_codigo = 5;
  dbms_output.put_line('Codigo: '||to_char(dados_estoque.est_codigo)
  || ' Nome: '||to_char(dados_estoque.est_nome));
end;