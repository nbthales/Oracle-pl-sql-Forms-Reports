select * from cliente;
insert into cliente values (3, 'Gustavo', 3);
insert into cliente values (4, 'Giulia', 1);

select * from cliente c where c.cli_codbairro = 2;

create index indice_nome_cliente on cliente(cli_nome);

create table logradouro (
       log_codigo number not null primary key,
       log_nome   varchar2(30)
);

insert into logradouro values (1, 'Av Farrapos');
insert into logradouro values (2, 'Colorado');

select * from logradouro;
