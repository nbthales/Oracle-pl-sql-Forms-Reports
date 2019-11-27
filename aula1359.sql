select fun_sexo, sum(fun_salario) from funcionarios group by fun_sexo;
--update funcionarios set fun_sexo = 'M' where fun_codigo = 4
select * from funcionarios;

select fun_sexo, sum(fun_salario) from funcionarios group by fun_sexo
having sum(fun_salario) >= 1500;
