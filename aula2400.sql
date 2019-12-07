select ascii('a'),
       ascii('¬'),
       ascii('p'),
       ascii('b')
  from dual;

select chr(98),
       ascii('b')
  from dual;

select 'Thales ' || 'Terra ' || 'Liberto' as nome_sobrenome
  from dual;

select concat(concat('Thales ', 'Terra '), 'Liberto') as nome_sobrenome 
  from dual;
