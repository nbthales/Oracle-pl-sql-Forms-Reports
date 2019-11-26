create table funcionarios(
  fun_codigo number not null,
  fun_nome varchar2(40),
  fun_codcargo number not null,
  fun_salario number,
  fun_sexo char(1),
  constraint funcionarios_pk primary key (fun_codigo)
);
/
create sequence funcionarios_seq minvalue 1 maxvalue 9999 increment by 1;
/
create trigger bi_funcionarios
  before insert on funcionarios
  for each row
    begin
      select funcionarios_seq.nextval into :new.fun_codigo from dual;
    end;
/
alter table funcionarios add constraint funcionarios_fk
  foreign key (fun_codcargo)
  references cargo (car_codigo);
/
insert into funcionarios(fun_nome, fun_codcargo, fun_salario, fun_sexo)
  values('Neri Neitzke', 5, 800, 'M');
insert into funcionarios(fun_nome, fun_codcargo, fun_salario, fun_sexo)
  values('Lisiane Neitzke', 4, 500, 'F' );
insert into funcionarios(fun_nome, fun_codcargo, fun_salario, fun_sexo)
  values('Kely Neitzke', 4, 700, 'F');
insert into funcionarios(fun_nome, fun_codcargo, fun_salario, fun_sexo)
  values('Gustavo Neri', 6, 600, 'M');
insert into funcionarios(fun_nome, fun_codcargo, fun_salario, fun_sexo)
  values('Giulia Neitzke', 4, 800, 'F');
/
select * from funcionarios;
select * from cargo;
