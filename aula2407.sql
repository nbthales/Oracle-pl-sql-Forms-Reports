select * from estoque;
create view estoque_nome as
  select * from estoque order by est_nome;

select * from user_views;
select * from estoque_nome;

create view estoque_pv as
  select * from estoque order by est_precovenda;
select * from estoque_pv;

select * from estoque where est_nome like '%Java%';
create view java as
  select *
    from estoque
   where est_nome like '%Java%'
   order by est_precovenda;
select * from java;

select * from estoque where est_nome like '%Video Aula%';
