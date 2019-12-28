create or replace trigger controla_horario
  before insert on estoque
begin
  if (to_char(sysdate,'hh24') not between '08' and '20') then
    raise_application_error(-20001, 'Não foi possivel gravar NESTE HORÁRIO!');
  end if;
end controla_horario;

select to_char(sysdate,'hh24:mi:ss') from dual;
insert into estoque values (30, 'Teste', 'un', 220, '01/01/2019');

--command window
SQL> execute grava_estoque (30, 'Video Aulas Ruby', 'un', 120, '22/06/2009');
