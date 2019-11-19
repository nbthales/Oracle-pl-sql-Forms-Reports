CREATE TABLE BAIRRO (
       bai_codigo   integer not null,
       bai_nome     varchar(30),
       constraint chave_primaria_bairro primary key (bai_codigo)
);

SELECT * FROM BAIRRO;

INSERT INTO BAIRRO VALUES (1, 'centro');
INSERT INTO BAIRRO VALUES (2, 'braganholo');
INSERT INTO BAIRRO VALUES (3, 'Colorado');
INSERT INTO BAIRRO VALUES (4, 'Princesa');
