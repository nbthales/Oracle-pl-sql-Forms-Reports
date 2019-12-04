select to_char(sysdate, 'dd/month/yyyy hh24:mi:ss') as Data_Hora from dual;

select 'Carazinho, '
  || to_char(sysdate, 'dd')
  || ' de '
  || to_char(sysdate, 'month')
  || ' de '
  || to_char(sysdate, 'yyyy')
  || ', Hora.: '
  || to_char(sysdate, 'hh24:mi:ss')
  || ' Prof Neri Neitzke'
  as Data_Hora from dual;
--
select 'Guaxupe, ' || 
  replace(to_char(sysdate, 'dd/month/yyyy'),'/',' de ') || 
    ', Hora.: ' || to_char(sysdate, 'hh24:mi:ss') || ' Prof Neri' 
    as Data_Hora
  from dual;
