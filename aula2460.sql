declare
  type dados_estoque is table of estoque%rowtype index by binary_integer;
  dados dados_estoque;
begin

  for i in 1..5 loop
--for i in dados.first..dados.last loop
    select * into dados(i) from estoque where est_codigo = i;
  end loop;

  for i in dados.first..dados.last loop
    dbms_output.put_line('Codigo: ' || to_char(dados(i).est_codigo) || ' Nome: ' || to_char(dados(i).est_nome)
    || ' Preço: '|| to_char(dados(i).est_precovenda));
  end loop;

end;