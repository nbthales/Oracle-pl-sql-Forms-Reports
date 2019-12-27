create or replace trigger controla_preco
  before insert or update of est_precovenda on estoque
  for each row
  when (not new.est_precovenda between 100 and 200)
begin
--if :new.est_precovenda < 100 or :new.est_precovenda > 200 then
--if :new.est_precovenda not between 100 and 200 then
    raise_application_error(-20001, 'Não foi possível gravar!');
--else
--  dbms_output.put_line('Produto gravado com sucesso!');
--end if; 
end controla_preco;

select * from estoque;

--command window
SQL > execute grava_estoque(24, 'Video Aula Apple', 'un', 80, '19/06/2009'); SQL > execute grava_estoque(24, 'Video Aula Apple', 'un', 200, '19/06/2009'); SQL > execute grava_estoque(24, 'Video Aula Apple', 'un', 180, '19/06/2009');
