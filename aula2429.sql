create or replace function valor_curso
  (codigo IN estoque.est_codigo%TYPE)
  return number
is
  valor estoque.est_precovenda%TYPE := 0;
begin
  select est_precovenda into valor from estoque
   where est_codigo = codigo;
return (valor);
end valor_curso;

--command window
SQL> variable valor number;
SQL> execute :valor := valor_curso(4);
