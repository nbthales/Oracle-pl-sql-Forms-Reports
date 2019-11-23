create or replace trigger trigger_codigo_cargo
  before insert on cargo
    for each row
      begin
        select sequencia_cod_cargo.nextval into:NEW.car_codigo
        from dual;
      end;

insert into cargo (car_nome) values ('secretaria');
insert into cargo (car_nome) values ('professor');
insert into cargo (car_nome) values ('office boy');

select * from cargo;
