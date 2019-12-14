declare
  numero1 number;
  numero2 number;
begin
  numero1 := 8;
  numero2 := 10;
  dbms_output.put_line('A soma é ' || (numero1+numero2));
end;
