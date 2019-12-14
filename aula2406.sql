select * from thales.estoque;
select * from estoque;

select * from user_synonyms;
create synonym est for thales.estoque;
select * from est;
--delete estoque where est_codigo = 14;
insert into est values (14, 'VideoAula Algoritmo','un',99,'12/12/2008');
