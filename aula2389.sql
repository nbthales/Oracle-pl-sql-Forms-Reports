--command window
commit;
set autocommit ON;


--sql window
select * from estoque;
insert into estoque values (&codigo,&nome,&tipo,&preco,&data);
