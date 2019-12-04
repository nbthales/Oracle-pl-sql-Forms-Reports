select to_char(sysdate, 'dd/month/yyyy hh24:mi:ss') from dual;

select trunc(sysdate) as data_atual, 
       trunc(sysdate)+10 as data_mais_10_dias,
       trunc(sysdate)-10 as data_menos_10_dias
  from dual;
