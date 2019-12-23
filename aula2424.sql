create or replace procedure telefone
(num_fone IN OUT varchar2)
is
begin
--998683031  -> (35)99868-3031
  num_fone := '(' || substr(num_fone,1,2) || ')'
                  || substr(num_fone,3,5) || '-'
                  || substr(num_fone,8,4);
end telefone;

--command window
SQL> variable fone varchar2(16);
SQL> begin
  2    :fone := 35998683031;
  3  end;
  4  /
SQL> execute telefone(:fone);
SQL> print fone;
