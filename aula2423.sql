create or replace procedure aumenta_preco_ind_param
(codigo_curso IN estoque.est_codigo%TYPE,
 percentual number)
is
begin
  update estoque set est_precovenda = est_precovenda * percentual 
    where est_codigo = codigo_curso;
end aumenta_preco_ind_param;

drop procedure aumenta_preco_individual_parametro;
select * from user_procedures;

--command window 
SQL> set serverout on;
SQL> execute aumenta_preco_ind_param(5);
SQL> execute aumenta_preco_ind_param(14,2);
SQL> execute aumenta_preco_ind_param(13,3);
SQL> execute aumenta_preco_ind_param(8,0.5);
