  select cli_sexo as Sexo,
         count(cli_sexo) as Quantos
    from clientes 
group by cli_sexo;

select 'Do sexo ' || cli_sexo || ' tem ' as "Pessoas", count(cli_sexo) as "Estatisticas"
  from clientes
group by cli_sexo;

select avg(cli_salario) from clientes group by cli_sexo;

select cli_sexo as sexo,
       sum(cli_salario) as soma,
       avg(cli_salario) as media,
       count(cli_sexo) as "quantidade de pessoas"
  from clientes
group by cli_sexo;

select cli_bairro as bairro,
       cli_sexo sexo,
       sum(cli_salario) as soma,
       avg(cli_salario) as media,
       count(cli_sexo) as "quantidade de pessoas"
  from clientes
group by cli_bairro, cli_sexo;

create table cidades
(
       cid_codigo integer not null,
       cid_nome   varchar(30),
       primary key (cid_codigo)
);

select * from cidades;

alter table clientes add constraint chave_estrangeira_bairro
foreign key (cli_bairro)
 references bairro (bai_codigo);
