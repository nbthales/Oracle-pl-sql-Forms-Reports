/*****************************************************
    LISTAGG + GROUP BY
    Utilizando a função LISTAGG juntamente com a função GROUP BY. 
    Imagine que precisamos montar um relatório com o ID dos departamentos em uma coluna 
    e na coluna seguinte o nome dos empregados separados por ‘;’.
******************************************************/
select e.department_id as "Departamento", 
       LISTAGG(e.first_name, '; ' ) within group (order by e.employee_id) "Empregados"
  from employees e
 group by e.department_id
 order by e.department_id;
/*****************************************************
    LISTAGG + OVER
    Ao utilizar a função LISTAGG juntamente com a função OVER, 
    é possível criar relatórios analíticos com grupos e subgrupos de dados. 
    Imagine o cenário onde você precise criar um relatório onde mostre o 
    nome do empregado, data de contatação, código do departamento, além disso, 
    é preciso criar uma quarta coluna que mostre uma lista de todos os outros 
    funcionários que pertencem ao mesmo departamento.
******************************************************/
select e.first_name "Nome",
       e.hire_date "Data Contratação",
       e.department_id "dpto.",
       listagg(e.first_name, '; ') within group(order by e.employee_id, e.first_name) 
       over(partition by e.department_id) "Empregados do mesmo dpto."
  from employees e
 order by 3, 1, 2;
 
/**************************************************************
 CREATE TABLE employees ( 
       EMPLOYEE_ID number,
       FIRST_NAME varchar2(40),
       LAST_NAME varchar2(40),
       EMAIL varchar2(40),
       PHONE_NUMBER varchar2(20),
       HIRE_DATE date, 
       JOB_ID varchar2(10), 
       SALARY number(8,2), 
       COMMISSION_PCT number(2,2), 
       MANAGER_ID number(6,0), 
       DEPARTMENT_ID number
);
INSERT INTO employees VALUES (1, 'thales', 'terra', 'nbthales@gmail.com', 998683031, sysdate, 1, 1000, null, null, 1)
INSERT INTO employees VALUES (2, 'oooo', 'oooo', 'oooo@gmail.com', 998683031, sysdate, 1, 1000, null, null, 1)
INSERT INTO employees VALUES (3, 'teste', 'kkkkk', 'kkkkk@gmail.com', 998541231, sysdate, 1, 1000, null, null, 1)
INSERT INTO employees VALUES (4, 'fulano', 'fulano', 'fulano@gmail.com', 998541671, sysdate, 1, 800, null, null, 2)
INSERT INTO employees VALUES (5, 'ciclano', 'ciclano', 'ciclano@gmail.com', 998541671, sysdate, 1, 800, null, null, 2)
**************************************************************/
