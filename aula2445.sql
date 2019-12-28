create or replace trigger desconecta
  before logoff on database
begin
  insert into logs (usuario, data, acao) values (user, sysdate, 'Desconectou do sistema.');
end desconecta;

select * from logs order by 2;
select * from user_triggers;
alter trigger desconecta disable;
alter trigger conecta disable;
