select * from clientes;
select avg(cli_salario) as media_salarial from clientes;
select count(cli_codigo) as quantidade_registros from clientes;
select count(*) as quantidade_registros from clientes;
select sum(cli_salario) as valor_total from clientes;
select sum(cli_salario) as valor_total from clientes where cli_sexo = 'F';
select sum(cli_salario) as valor_total from clientes where cli_sexo = 'M';
select min(cli_salario) as valor_minimo from clientes;
select max(cli_salario) as valor_maximo from clientes;
select cli_codigo, lower(cli_nome) as Nome,upper(cli_correio) as email, cli_salario from clientes;

select cli_nome || cli_sexo from clientes;
select cli_nome || ' - ' || cli_sexo as "Nome e Sexo" from clientes;

create index ind_nome_cliente on clientes(cli_nome);
