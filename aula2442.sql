create or replace trigger altera
  after update on estoque
begin
  dbms_output.put_line('Atualizou tipo no estoque com sucesso!');
end altera;

create or replace trigger altera1
  after update on estoque
  for each row
begin
  dbms_output.put_line('Atualizou tipo no estoque com sucesso!');
end altera1;

update estoque set est_tipo = 'll';
drop trigger altera;
select * from estoque;
