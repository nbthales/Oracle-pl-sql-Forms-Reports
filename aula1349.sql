drop table clientes;
create table clientes
(
       cli_codigo    integer not null,
       cli_nome      varchar(40),
       cli_codbairro integer not null,
       constraint pk_chaveprimaria_cliente primary key (cli_codigo)
);

   alter table clientes 
add constraint fk_chaveestrangeira_bairro
   foreign key (cli_codbairro)
    references bairro (bai_codigo);
    
alter table clientes drop constraint fk_chaveestrangeira_bairro;

insert into clientes values(1, 'Neri', 4);
insert into clientes values(2, 'Lisiane', 3);

select * from bairro;
delete from bairro where bai_codigo = 4;

select * from clientes;
delete from clientes where cli_codigo = 1;
