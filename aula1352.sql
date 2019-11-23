create table cargo (
       car_codigo integer not null,
       car_nome   varchar2(20),
       constraint chave_orimaria_cargo primary key (car_codigo)
);

select * from cargo;

insert into cargo values (1, 'Secretária');
insert into cargo (car_nome) values ('Professor');

create sequence sequencia_cod_cargo minvalue 1 maxvalue 9999 increment by 1;
