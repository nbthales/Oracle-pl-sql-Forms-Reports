create table produto(
       pro_codigo number not null,
       pro_nome varchar2(30),
       constraint produto_pk primary key (pro_codigo)
);

create sequence produto_seq minvalue 1 maxvalue 9999 increment by 1;

create trigger bi_produto
  before insert on produto
  for each row
    begin
      select produto_seq.nextval into :new.pro_codigo from dual;
    end;
    
insert into produto (pro_nome) values('calça');
insert into produto (pro_nome) values('sapato');
insert into produto (pro_nome) values('camisa');
insert into produto (pro_nome) values('camiseta');
insert into produto (pro_nome) values('meia');

select * from produto;

create table vendas(
       ven_codigo number not null,
       ven_cliente varchar2(30),
       ven_codprod number not null,
       constraint vendas_pk primary key (ven_codigo)
);

create sequence vendas_seq minvalue 1 maxvalue 9999 increment by 1;

create trigger bi_vendas
       before insert on vendas
       for each row
         begin
           select vendas_seq.nextval into :new.ven_codigo from dual;
         end;

alter table vendas add constraint vendas_fk
  foreign key (ven_codprod)
  references produto (pro_codigo);
