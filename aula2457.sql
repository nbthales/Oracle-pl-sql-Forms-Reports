declare
  type reg_estoque is record(
    codigo number,
    nome varchar2(30),
    tipo char(2),
    precovenda number,
    datacad date,
    quantidade number
  );
  dados_estoque reg_estoque;
begin
  select * into dados_estoque.codigo, dados_estoque.nome,
    dados_estoque.tipo, dados_estoque.precovenda,
    dados_estoque.datacad, dados_estoque.quantidade
  from estoque
  where est_codigo = 3;
  dbms_output.put_line('Codigo: '||dados_estoque.codigo);
  dbms_output.put_line('Nome: '||dados_estoque.nome);
  dbms_output.put_line('Tipo: '||dados_estoque.tipo);
  dbms_output.put_line('Preco: '||dados_estoque.precovenda);
  dbms_output.put_line('Data: '||dados_estoque.datacad);
  dbms_output.put_line('Quantidade: '||dados_estoque.quantidade);
end;