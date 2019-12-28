create or replace trigger gravado
  after insert on estoque
begin
  dbms_output.put_line('Gravou estoque com sucesso!');
end gravado;

insert into estoque values (35, 'Video Aula', 'un', 100, '01/01/2019');
select * from estoque;
