select * from estoque;
alter table estoque add est_quantidade number;
update estoque set est_quantidade = 10;

create table venda(
  ven_codigo number,
  ven_codprod number,
  ven_quantidade number
);

insert into venda values(1, 1, 2);
delete venda;
select * from venda;
