select upper('ThAlEs TerrA'),
       lower('ThAlEs TerrA'),
       initcap('ThAlEs TerrA'),
       lpad('ThAlEs TerrA', 20, '*'),
       rpad('ThAlEs TerrA', 20, '*')
  from dual;

select upper(est_nome),
       lower(est_nome),
       initcap(est_nome),
       lpad(est_nome, 40, '*'),
       rpad(est_nome, 40, '*')
  from estoque;

select replace('Bununu', 'u', 'a') from dual;
select replace(est_nome, 'Video Aula','Video-Aula') from estoque;
