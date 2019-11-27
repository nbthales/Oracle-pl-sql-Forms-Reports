select * from cargo;
select * from funcionarios;

insert into cargo (car_nome) values ('pedreiro');

select * from funcionarios, cargo;

select fun_codigo, fun_nome, fun_salario, fun_sexo, car_nome
  from funcionarios join cargo on fun_codcargo = car_codigo
 order by fun_codigo;

select f.fun_codigo, f.fun_nome, f.fun_salario, f.fun_sexo, c.car_nome
  from cargo c, funcionarios f
 where c.car_codigo = f.fun_codcargo
 order by fun_codigo;
