create database empresa;
use empresa;
CREATE TABLE clientes (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    sexo ENUM('M', 'F'),
    nascimento DATE,
    cidade VARCHAR(20) DEFAULT 'Curitiba',
    uf CHAR(2) DEFAULT 'PR',
    PRIMARY KEY (id)
)  DEFAULT CHARSET=UTF8MB4;

INSERT INTO clientes(id, nome, sexo, nascimento, cidade, uf)
VALUES('1', 'Ana', 'F', '1990-06-15', 'Curitiba', 'PR');

INSERT INTO clientes(nome, sexo, nascimento, cidade, uf)
VALUES('Beatriz', 'F', '1990-07-15', 'Campo Largo', 'PR');

INSERT INTO clientes VALUES
(default, 'Elaine', 'F', '1995-09-21', default, default),
(default, 'Fábio', 'M', '1995-10-22', 'Ponta Grossa', default),
(default, 'Gilberto', 'M', '1996-11-23', 'Santo André', 'SP');

INSERT INTO clientes(id, nome, sexo, nascimento, cidade, uf)
VALUES(default, 'Carlos', 'M', '1990-08-15', default, default);

INSERT INTO clientes(nome, sexo, nascimento, cidade, uf)
VALUES('João César', 'M', '2006-03-09', 'Ortigueira', 'PR');

SELECT * FROM clientes;
describe clientes;

alter table clientes drop column nascimento;
alter table clientes drop column cidade;
alter table clientes drop column uf;
describe clientes;

alter table clientes
add column idade tinyint unsigned,
add column peso float,
add column bairro varchar(20),
add column telefone char(11);
describe clientes;

ALTER TABLE clientes
modify column idade tinyint unsigned;
describe clientes;

UPDATE clientes 
SET 
    idade = 22,
    peso = 60,
    bairro = 'Centro',
    telefone = '9121-3040'
WHERE
    id = 1;
SELECT * FROM clientes;
UPDATE clientes 
SET 
    idade = 34,
    peso = 55,
    bairro = 'Portão',
    telefone = '9221-4030'
WHERE
    id = 2

CREATE TABLE produtos (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    unidades_estoque INT NOT NULL,
    preco FLOAT(6 , 2 ) NOT NULL,
    funcionario VARCHAR(30) NOT NULL,
    observacao VARCHAR(100),
    PRIMARY KEY (id)
)  DEFAULT CHARSET=UTF8MB4;
describe produtos;

insert into produtos values
(default, 'Sabão em pó', 100, 9, 'Alcir Jt.', null),
(default, 'Sabão em barra', 277, 4.5, 'Maria Rita Amorim', 'Algumas barras estão avariadas'),
(default, 'Vanish em pó 1 Kg', 70, 45, 'Alcir Jr.', null);
select * from produtos;
select * from clientes;

update produtos
set 
	funcionario = 'Alcir Jr.'
where
	id = 1;
    
select * from produtos;

insert into clientes values 
(default, 'Beatriz', 'F', 34, 55, 'Jardim Botânico', 'PR');

/* DELETAR O REGISTRO DUPLICADO DA BEATRIZ */
delete from clientes where id = 8;

ALTER TABLE clientes drop column bairro;
alter table clientes add column email varchar(50);
describe clientes;

update clientes set
	email = 'marcelo@gmail.com' where id = 1;
update clientes set 
	email = 'jp22@outlook.com' where id = 2;
update clientes set
	email = 'angel@hotmail.com' where id = 3;
select * from clientes;

alter table produtos add column setor varchar(50);
describe produtos; 
 
/* update produtos set setor= 'Limp pesada' where id = 1 or id = 2 or id = 3; */
update produtos set setor= 'Limpeza' where id = 1;
update produtos set setor= 'Limpeza' where id = 2;
update produtos set setor= 'Limpeza' where id  = 3;
update produtos set unidades_estoque= '257' where id = 2;
update produtos set preco= 40 where id = 3;
select * from produtos;

select * from clientes
where nome like 'jo%';
