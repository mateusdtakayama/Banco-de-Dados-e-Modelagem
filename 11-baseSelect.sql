create database funcionario;
use funcionario;

CREATE TABLE tb_funcionario (
	id int not null primary key,
	nome varchar(50) not null,
	salario decimal,
	uf varchar(2),
    cidade varchar(10),
    endereco varchar(50)
);


INSERT INTO tb_funcionario VALUES (1,'Joao Maria', 1500.00,'PR','Cascavel', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (2,'Willian Douglas', 2500.00,'PR','Cascavel', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (3,'Maria', 3500.00,'PR','Cascavel', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (4,'Joao Douglas', 1500.00,'PR','Toledo', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (5,'Douglas Joao', 1500.00,'PR','Cascavel', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (6,'Pedro Henrique', 1500.00,'PR','Toledo', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (7,'Joao Henrique', 1500.00,'PR','Cascavel', '');
INSERT INTO tb_funcionario VALUES (8,'Jose Antonio', 10500.00,'PR','Toledo', '');
INSERT INTO tb_funcionario VALUES (9,'Joao Willian', 1500.00,'PR','', '');
INSERT INTO tb_funcionario VALUES (10,'Carlos Pedro', 1500.00,'PR','', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (11,'Gustavo Carlos', 5500.00,'PR','Toledo', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (12,'Gustao Maria', 1500.00,'PR','Cascavel', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (13,'Benicio Joao', 12500.00,'PR','Toledo', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (14,'Betina Maria', 12500.00,'PR','Toledo', 'AV. Brasil');
INSERT INTO tb_funcionario VALUES (15,'Henrique Gustavo', 12500.00,'PR','', 'AV. Brasil');
