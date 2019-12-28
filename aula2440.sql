create or replace trigger controla_horario
  before insert on estoque
begin
  if (to_char(sysdate, 'DY') in ('SAT', 'SUN')) or
     (to_char(sysdate, 'hh24') not between '08' and '22') then
    raise_application_error(-20001, 'teste');
  end if;
end controla_horario;

select to_char(sysdate, 'DY') from dual;

insert into estoque values(31, 'Teste', 'un', 220, '01/01/2019');

declare
  dia varchar(20); 
begin 
  select to_char(sysdate, 'DY') into dia from dual; 
  dbms_output.put_line(dia); 
end;
