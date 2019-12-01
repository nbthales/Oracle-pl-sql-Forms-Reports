create table estoque (
  est_codigo number not null,
  est_nome varchar2(40),
  est_tipo char(2),
  est_precovenda number(10,2),
  est_datacad date,
  constraint pk_estoque primary key (est_codigo)
);

select * from estoque
