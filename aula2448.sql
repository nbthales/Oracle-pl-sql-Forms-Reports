create or replace trigger baixa_estoque
  after insert or update or delete of ven_quantidade on venda
  for each row
begin
  if inserting then
    update estoque set est_quantidade = est_quantidade - :new.ven_quantidade
    where est_codigo = :new.ven_codprod;
  elsif deleting then
    update estoque set est_quantidade = est_quantidade + :old.ven_quantidade
    where est_codigo = :old.ven_codprod;  
end baixa_estoque;

insert into venda values(3, 2, 3);
select * from venda;
select * from estoque;
delete venda where ven_codigo = 3;
