create or replace function calcular
(numero1 IN number,
 numero2 IN number,
    oque IN varchar2)return number
is
  calculo number;
begin
  if oque = 'soma' then
    calculo := numero1 + numero2;
  elsif oque = 'mult' then
    calculo := numero1 * numero2;
  elsif oque = 'dividir' then
    calculo := numero1 / numero2;
  elsif oque = 'subtrair' then
    calculo := numero1 - numero2;
 end if;
  return(calculo);
end calcular;

--command window
SQL> variable calc number;
SQL> execute :calc := soma2(22,33);
SQL> execute :calc := calcular(11,4,'soma');
SQL> execute :calc := calcular(10,5,'mult');
SQL> execute :calc := calcular(10,5,'subtrair');
SQL> execute :calc := calcular(10,5,'dividir');
