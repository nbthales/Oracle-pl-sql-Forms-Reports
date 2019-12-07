select round(895.456),
       round(895.456, 0),
       round(895.456, 1),
       round(895.456, 2),
       round(895.456, -1),
       round(895.456, -2)
  from dual;

select trunc(895.456, 1) 
  from dual;

select trunc(895.456, 2), 
       round(895.456, 2) from dual;
