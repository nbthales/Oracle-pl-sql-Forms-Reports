create or replace trigger conecta
  after logon on database
begin
  insert into logs (usuario, data, acao) values (user, sysdate, 'Conectou no sistema.');
end conecta;

select * from user_triggers;
select * from logs order by 2;
