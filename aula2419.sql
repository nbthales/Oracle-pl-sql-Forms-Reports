select * from dual;

declare
  --nome varchar2(40);
  quantos number;
begin
  --select 'Thales' into nome from dual;
  select count(est_nome) into quantos from estoque;
  --dbms_output.put_line(nome);
  dbms_output.put_line('Possui ' || quantos || ' registros.');
end;

select count(est_nome) from estoque;

--command window
SQL> set serverout on;
