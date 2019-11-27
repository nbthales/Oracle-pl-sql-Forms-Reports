select * from funcionarios;

select fun_sexo, sum(fun_salario)
  from funcionarios
 group by fun_sexo
having count(fun_sexo) >= 3;
/*
select cli_codcid, cli_sexo, sum(cli_salario)
  from clientes
 group by cli_codcid
having count(cli_codcid) = 2;
*/
