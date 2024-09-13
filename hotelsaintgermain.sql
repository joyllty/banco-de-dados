# Linguagem DDL
create database HotelSaintGermain;
use HotelSaintGermain;
CREATE TABLE Cliente (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    DtaCadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP (),
    Cidade VARCHAR(20) NULL DEFAULT 'Curitiba' NOT NULL,
    Uf CHAR(2) NULL DEFAULT 'PR' NOT NULL,
    Pais VARCHAR(20) DEFAULT 'Brasil' NOT NULL
)  DEFAULT CHARSET=UTF8MB4;

describe Cliente;

ALTER TABLE Cliente
	ADD Profissao VARCHAR(30) NOT NULL,
    ADD Obs VARCHAR(500) NULL;
    
describe Cliente;

ALTER TABLE Cliente
	DROP Profissao,
    DROP Obs;
    
describe Cliente;

ALTER TABLE Cliente
	ADD Sexo CHAR(1) NOT NULL;

ALTER TABLE Cliente
	MODIFY COLUMN Nome VARCHAR(40) UNIQUE,
    MODIFY COLUMN CPF NUMERIC(11) NOT NULL UNIQUE,
    MODIFY COLUMN Sexo CHAR(3) NOT NULL;

describe Cliente;
