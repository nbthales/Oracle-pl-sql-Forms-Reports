create or replace function calculo
(numero IN number) return number
is
begin
  return (numero + 20);
end;

--command window
SQL> variable calc number;
SQL> execute :calc := calculo(30);
SQL> print calc;
