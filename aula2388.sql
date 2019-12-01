--command window
conn thales;
desc estoque;
save novo_estoque;
get novo_estoque;

--sql window
insert into estoque values(1,'Video Aula Oracle','un',115,'10/06/09');
insert into estoque values(2,'Video Aula Java','un',99,'10/06/08');
insert into estoque values(3,'Video Aula Delphi','un',109,'10/06/09');
insert into estoque values(4,'Video Aula Flex', 'un', 119, '10/06/09');

insert into estoque values(&codigo, &nome, &tipo, &valor, &data);

select * from estoque;
