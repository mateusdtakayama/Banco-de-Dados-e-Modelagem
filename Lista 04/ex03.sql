CREATE DATABASE ESCOLA;
USE ESCOLA;

CREATE TABLE instrutores (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  valor_hora INTEGER UNSIGNED NULL,
  certificados VARCHAR(255) NULL,
  PRIMARY KEY(id)
);
CREATE TABLE cursos (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  requisito VARCHAR(255) NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  preco DOUBLE UNSIGNED NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE alunos (
  id INT NOT NULL AUTO_INCREMENT,
  cpf CHAR(11) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  fone CHAR(14) NOT NULL,
  data_nascimento DATE NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE turmas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  instrutores_id INT NOT NULL,
  cursos_id INTEGER UNSIGNED NOT NULL,
  data_inicio DATE NULL,
  data_final DATE NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX turmas_FKIndex1(cursos_id),
  INDEX turmas_FKIndex2(instrutores_id),
  CONSTRAINT CURSO_TURMA_FK FOREIGN KEY(cursos_id)
    REFERENCES cursos(id),
  CONSTRAINT INSTRUTOR_TURMA_FK FOREIGN KEY(instrutores_id)
    REFERENCES instrutores(id)
);
 
CREATE TABLE matriculas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  turmas_id INTEGER UNSIGNED NOT NULL,
  alunos_id INT NOT NULL,
  data_matricula DATE NULL,
  PRIMARY KEY(id),
   CONSTRAINT ALUNO_MATRICULA_FK FOREIGN KEY(alunos_id)
    REFERENCES alunos(id),
  CONSTRAINT TURMA_MATRICULA_FK FOREIGN KEY(turmas_id)
    REFERENCES turmas(id)
);

insert into alunos
	values(1 , 08343213947, "Mateus", "mateus25dedata_nascimentolai@gmail.com" , 45999444411, "2001-08-25");

insert into alunos
	values(2 , 08343213950, "Pedro", "pedro25delai@gmail.com" , 45999444422, "2002-08-25"),
		(3 , 08343213951, "Lucas", "lucas25delai@gmail.com" , 45999444425, "2003-08-25"),
		(4 , 08343213952, "Jao", "jao25delai@gmail.com" , 45999444430, "2004-08-25"),
		(5 , 08343213953, "Alfredo", "alfredo25delai@gmail.com" , 45999444455, "2005-08-25");
    
select * from alunos;

insert into cursos
	values(1, "Curso1", "Nenhum", 50, 2500),
		(2, "Curso2", "Nenhum", 70, 3000),
        (3, "Curso3", "Nenhumbro", 80, 3000),
        (4, "Curso4", "Nenhum", 90, 4000),
        (5, "Curso5", "Nenhum", 100, 5000);
        
insert into instrutores
	values(1, "Instrutor1", "instrutor1@gmail.com", 50, "nenhumcertificado"),
    (2, "Instrutor2", "instrutor2@gmail.com", 50, "nenhumcertificado"),
    (3, "Instrutor3", "instrutor3@gmail.com", 50, "nenhumcertificado"),
    (4, "Instrutor4", "instrutor4@gmail.com", 50, "nenhumcertificado"),
    (5, "Instrutor5", "instrutor5@gmail.com", 50, "nenhumcertificado");
 
 insert into turmas
	values (1, 1, 1, "2000-08-25", "2001-08-25", 50),
    (2, 2, 2, "2000-08-25", "2001-08-25", 50),
    (3, 3, 3, "2000-08-25", "2001-08-25", 50),
    (4, 4, 4, "2000-08-25", "2001-08-25", 50),
    (5, 5, 5, "2000-08-25", "2001-08-25", 50);
 
insert into matriculas
	values (1, 1, 1, "2000-08-25"),
    (2, 2, 2, "2000-08-25"),
    (3, 3, 3, "2000-08-25"),
    (4, 4, 4, "2000-08-25"),
    (5, 5, 5, "2000-08-25");
    
    
update instrutores
	set nome = "Leonardo"
	where id = "1";

select * from instrutores;

update instrutores
	set email = "mateus25delai@gmail.com"
    where nome = "Leonardo";
    
select * from cursos;

update cursos
	set nome = "CursoNovo"
    where id = 1;
    
update cursos
	set nome = "cursodahora"
    where nome = "CursoNovo";
    
select * from turmas;

update turmas 
	set cursos_id = 2
    where instrutores_id = 1;
    
update turmas 
	set cursos_id = 3
    where instrutores_id = 1;

select * from alunos;

select * from instrutores;

SET FOREIGN_KEY_CHECKS=0;

delete from instrutores
	where nome = "Leonardo";
    
delete from instrutores
	where nome = "instrutor2";
    
select * from cursos;

delete from cursos
	where id = 1;
    
delete from cursos
	where id = 2;
    
select * from alunos;
    
delete from alunos
	where id = 1;
    
delete from alunos
	where id = 2;
    
delete from matriculas
	where id = 1;
    
delete from matriculas
	where id = 2;
    
delete from turmas
	where id = 1;
    
delete from turmas
	where id = 2;


