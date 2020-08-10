
/*ENTIDADE = TABELA 
CAMPOS = ATRIBUTOS */

CLIENTE 

NOME - CARACTER (30)
CPF - NUMERICO (11)
EMAIL  - CARACTER( 30 )
TELEFONE - CARACTER ( 30 )
ENDERECO - CARACTER ( 100 )
SEXO - CARACTER ( 1 )

/* PROCESSOS DE MODELAGEM */

/* FASE 01 E FASE 02 - AD ADM DE DADOS */

MODELAGEM CONCEITUAL - RASCUNHO 
MODELAGEM LOGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DBA / AD */
MODELAGEM FIDICA - SCRIPTS DE BANCO

CRIANDO O BANCO E AS TABELAS
-----------------------------------------------

/* INICIANDO A MODELAGEM FÍSICA */

/* CRIANDO O BANCO DE DADOS */

CREATE DATABASE EXEMPPLO    /*OBS QUE O EXEMPLO NÃO FINALIZA COM ; E O SQL FICA ESPERANDO FINALIZAR A LINHA*/    

CREATE DATABASE PROJETO;

/* CONECTANDO-SE AO BANCO, */

USE PROJETO;


/* CRIANDO A TABELA DE CLIENTES      */

CREATE TABLE CLIENTE(
	NOME VARCHAR (30),
	SEXO CHAR (1),
	EMAIL VARCHAR (30),
	CPF INT (11),
	TELEFONE VARCHAR (30),
	ENDERECO VARCHAR (100)	
);



/* MOSTRANDO AS TABELAS DO BANCO DE DADOS */

SHOW TABLES;

/* DESCOBRINDO A ESTRUTURA DA TABELA */

DESC CLIENTE;



/* FORMA 01  - OMITINDO AS COLUNAS*/

INSERT INTO CLIENTE VALUES('JONAS', 'M','JONAS@GMAIL.COM',989897765,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('PEDRO', 'M',NULL,977460055,'22983119','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 02  - INCLUINDO AS COLUNAS AS COLUNAS*/

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES ('LILIAN','F','RUA AGUAS DE MARÇO - SÃO PAULO - SP','947785696',887774856);

/* FORMA 03  -  INSERT COMPACTO - PARA MYSQL3*/

INSERT INTO CLIENTE VALUES ('JONAS', 'M','JONAS@GMAIL.COM',989897765,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ'),
('JONAS', 'M','JONAS@GMAIL.COM',989897765,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ'),
('BRUTO', 'M','JONAS@GMAIL.COM',989897666,'22923666','MAIA LACERDA - INFERNO - RIO DE JANEIRO - IF'),
('BRUTAL', 'M','JONAS@GMAIL.COM',666897765,'22923110','MAIA LACERDA - SHOW - RIO DE JANEIRO - RJ');


/* SELECAO PROJECAO E JUNCAO*/

SELECT NOW () as DATA_HORA, 'CASSIO LUCIANO DA SILVA' AS ALUNO;

SELECT 'CASSIO LUCIANO DA SILVA'

SELECT 'BANCO DE DADOS'


/* ALIAS DE COLUNAS*/

SELECT NOME, SEXO, EMAIL FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;


/* ESPECIFICANDO O NOME DA COLUNA */


SELECT NOME AS OS_CLIENTES, SEXO, EMAIL FROM CLIENTE;

SELECT NOME AS OS_CLIENTES, SEXO, EMAIL FROM CLIENTE;


/* TABELA ERRADA - NÃO INCLUIR NO BANCO DE DADOS DIRETO */

CREATE TABLE CLIENTE(
	NOME VARCHAR (30),
	SEXO CHAR (1),
	EMAIL VARCHAR (30),
	CPF INT (11),
	TELEFONE VARCHAR (30),
	ENDERECO VARCHAR (100)	
);


/*APENAS PARA FIND ACADEMICOS */

SELECT * FROM CLIENTE;



/*APRESENTANDO TABELA COM COLUNA*/

SELECT NOME, SEXO, EMAIL, ENDERECO, NOW() AS DATA_HORA FROM CLIENTE;


/*APRESENTANDO TABELA COM FILTRO*/

SELECT NOME, SEXO FROM CLIENTE
WHERE SEXO = 'M';


SELECT NOME, ENDERECO FROM CLIENTE
WHERE SEXO = 'F';

/* NÃO VAI APRESENTAR NADA PORQUE ENDEREÇO NÃO É IGUAL ' = ' EJ */

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO = 'RJ';


/* USANDO O LIKE NO LUGAR DO IGUAL ELE VAI TRAZER UM VALOR PROXIMO */
/* CARACTER CORINGA % -> QUALQUER COISA APOS*/

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

/* CARACTER CORINGA <- % QUALQUER COISA ANTES */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR%';

/* CARACTER CORINGA  <- % QUALQUER COISA  %-> QUALQUER COISA ANTES E DEPOIS */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%MARÇO%';







