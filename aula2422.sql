create or replace procedure aumenta_preco_todos
is
begin
  update estoque set est_precovenda = est_precovenda +20;
end;

create or replace procedure aumenta_preco_individual
is
begin
  update estoque set est_precovenda = est_precovenda + 31 
    where est_codigo = 14; 
end;

select * from estoque;

--command window
SQL> execute aumenta_preco_todos;
SQL> select * from estoque;
SQL> commit;

SQL> execute aumenta_preco_individual;
SQL> commit;
