create or replace trigger controla_preco
  before update of est_precovenda on estoque
  for each row
begin
  if (:new.est_precovenda < :old.est_precovenda) then
    raise_application_error(-20001,'Novo valor deve ser maior que o anterior!!');
  end if;  
end controla_preco;

select * from estoque;

--command window
SQL> update estoque set est_precovenda = 129 where est_codigo = 3;
