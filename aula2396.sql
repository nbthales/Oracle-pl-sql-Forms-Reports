select to_char('02/08/2009') as data_inicio,
       to_char(add_months('02/08/2009', +4), 'dd/mon/yyyy') as data_mais_4meses
  from dual;

select to_char('31/01/2009') as data_inicio,
       to_char(add_months('31/01/2009',&entre_nr_meses), 'dd/month/yyyy')
       as nova_data 
  from dual;
