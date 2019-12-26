create or replace function dados_curso
(codigo IN estoque.est_codigo%TYPE)
return varchar
is
  valor estoque.est_precovenda%TYPE := 0;
  nome estoque.est_nome%TYPE := '';
begin
  select est_nome, est_precovenda 
    into nome, valor
    from estoque
   where est_codigo = codigo;
  return('Nome do curso: '|| nome || ', valor: R$' || valor);
end dados_curso;

--command window
SQL> variable dados_curso varchar2;
SQL> execute :dados_curso := dados_curso(3);
