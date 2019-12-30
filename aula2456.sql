declare
  type reg_estoque is record(
    codigo number,
    nome varchar2(30)
  );
  dados_estoque reg_estoque;
begin
dados_estoque.codigo := 10;
dados_estoque.nome := 'Thales Terra';
dbms_output.put_line('Código = ' || to_char(dados_estoque.codigo)
  || ' nome = ' || to_char(dados_estoque.nome));
end;