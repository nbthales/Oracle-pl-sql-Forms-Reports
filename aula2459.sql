declare
  type codigo is table of number index by binary_integer;
  type nome is table of varchar2(40) index by binary_integer;
  
  t_codigo codigo;
  t_nome nome;
  
begin

  t_codigo(1) := 1;
  t_nome(1) := 'Thales';
  
  t_codigo(2) := 2;
  t_nome(2) := 'Lisiane';

  t_codigo(3) := 3;
  t_nome(3) := 'Giuguto';

  dbms_output.put_line('1. Codigo: ' || to_char(t_codigo(1)) || ' Nome: ' || to_char(t_nome(1)));
  dbms_output.put_line('2. Codigo: ' || to_char(t_codigo(2)) || ' Nome: ' || to_char(t_nome(2)));
  dbms_output.put_line('3. Codigo: ' || to_char(t_codigo(3)) || ' Nome: ' || to_char(t_nome(3)));
  dbms_output.put_line('Primeiro registro: ' || to_char(t_codigo.first) || ' Ultimo: ' || to_char(t_nome.last));
end;