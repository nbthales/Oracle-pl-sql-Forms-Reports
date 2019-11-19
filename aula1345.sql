select * from clientes order by cli_nome;
select * from clientes where cli_codigo >= 2;
select * from clientes where cli_nome like 'N%';
select * from clientes where cli_codigo between 2 and 5;
select * from clientes where cli_codigo not between 2 and 5;
select * from clientes where cli_codigo in(2, 4, 6);
select * from clientes where cli_codigo not in(2, 4, 6);
select distinct cli_bairro from clientes;
select * from clientes;

alter table clientes add cli_email varchar(30);
alter table clientes drop column cli_email;
