alter table clientes rename column cli_email to cli_correio;
alter table clientes add cli_salario numeric(10,2);

update clientes 
   set cli_correio = 'neri@informaticon.com.br', 
       cli_salario = 1600 
 where cli_codigo = 1;
 
update clientes 
   set cli_correio = 'lisiane@informaticon.com.br', 
       cli_salario = 1400 
 where cli_codigo = 2; 

update clientes 
   set cli_correio = 'kely@informaticon.com.br', 
       cli_salario = 1200 
 where cli_codigo = 3; 

select * from clientes;
