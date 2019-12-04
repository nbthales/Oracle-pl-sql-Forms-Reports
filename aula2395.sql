select to_char(sysdate, 'dd/mon/yyyy') as data_atual,
       to_char(add_months(sysdate,+4), 'dd/mon/yyyy') as data_mais_4meses,
       to_char(add_months(sysdate,-2), 'dd/mon/yyyy') as data_menos_2meses
  from dual;
