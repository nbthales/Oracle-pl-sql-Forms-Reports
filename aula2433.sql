select * from user_triggers;
select * from estoque;

create or replace trigger controla_preco
before insert or update of est_precovenda on estoque
for each row
begin
  if :new.est_precovenda < 100 then
    raise_application_error(-20001, 'Não foi possível, valor abaixo de R$100,00');
  else
    dbms_output.put_line('Produto gravado com sucesso.');
  end if;
end controla_preco;
