select substr('Thales Terra Liberto',8,5) from dual;
select substr(est_nome,1,5) from estoque;

select length('Thales Terra Liberto') from dual;
select est_nome, length(est_nome) as tamanho from estoque;
