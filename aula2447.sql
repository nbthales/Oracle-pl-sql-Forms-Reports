--quando inserir um registro no campo ven_quantidade da tabela venda
--diminui a quantidade da tabela estoque
create or replace trigger baixa_estoque
  after insert or update of ven_quantidade on venda
  for each row
begin
  update estoque set est_quantidade = est_quantidade - :new.ven_quantidade
   where est_codigo = :new.ven_codprod;
end baixa_estoque;

select * from venda;
select * from estoque;

insert into venda values(1, 3, 6);
