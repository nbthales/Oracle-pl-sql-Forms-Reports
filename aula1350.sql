alter table clientes add ("cli_email" varchar(40) null);
alter table clientes modify ("cli_email" varchar2(30) null);
alter table clientes rename column "cli_email" to "cli_correio";
alter table clientes drop column "cli_correio";

alter table clientes rename to cliente;
select * from cliente;
