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
  end if;
end baixa_estoque;

select * from estoque;
select * from venda;

insert into venda (ven_codigo, ven_codprod, ven_quantidade) values(3, 2, 3);
delete venda where ven_codigo = 3;

insert into venda (ven_codigo, ven_codprod, ven_quantidade) values(3, 4, 7);
delete venda where ven_codigo = 3;
