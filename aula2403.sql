select * from estoque order by 1;
insert into estoque ();

create sequence estoque_seq 
     start with 1
   increment by 1
       maxvalue 999999
       minvalue 1
        nocycle
          cache 10;

select * from user_sequences;

select estoque_seq.nextval from dual;

select estoque_seq.currval from dual;
