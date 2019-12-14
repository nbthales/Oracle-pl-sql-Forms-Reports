create or replace procedure mes_case is
  qual_mes number := 6;
  nome_mes varchar2(15);
begin
  case qual_mes
    when 1 then
      nome_mes := ('Janeiro');
    when 2 then
      nome_mes := ('Fevereiro');
    when 3 then
      nome_mes := ('Marco');
    when 4 then
      nome_mes := ('Abril');
    when 5 then
      nome_mes := ('Maio');
    when 6 then
      nome_mes := ('Junho');
    when 7 then
      nome_mes := ('Julho');
    when 8 then
      nome_mes := ('Agosto');
    when 9 then
      nome_mes := ('Setembro');
    when 10 then
      nome_mes := ('Outubro');
    when 11 then
      nome_mes := ('Novembro');
    when 12 then
      nome_mes := ('Dezembro');
  end case;
  dbms_output.put_line(nome_mes);
end;

--command window
SQL > execute mes;
