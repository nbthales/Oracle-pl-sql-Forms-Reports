create global temporary table temporary_estoque
  on commit preserve rows
  as select * from estoque;

select * from temporary_estoque;
select * from estoque;

insert into temporary_estoque (est_codigo, est_nome, est_tipo,
  est_precovenda, est_datacad, est_quantidade) values 
  (6, 'Video Aula Sanfona' , 'un', 45, '23/06/09', 2);