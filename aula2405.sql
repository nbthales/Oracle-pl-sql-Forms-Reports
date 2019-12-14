select *
  from estoque
 where est_codigo > 3
   and est_codigo < 7;

select *
  from user_indexes;

create index indice_nome_estoque on estoque (est_nome); 
drop index indice_nome_estoque;
