select * from bairro;

create table clientes
(
       cli_codigo integer not null,
       cli_nome   varchar(30),
       cli_bairro integer not null,
       cli_sexo   char(1),
       constraint chave_primaria_cliente primary key (cli_codigo)
);

select * from clientes;

insert into clientes values (1,'Neri Neirzke',2,'M');
insert into clientes values (2,'Lisiane Neitzke',1,'F');
insert into clientes values (3, 'Kely Neitzke',1,'F');

delete from bairro where bai_codigo = 2;
