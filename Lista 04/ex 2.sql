create database escola;
use escola;

create table professores(
id_professor int primary key,
nome_professor varchar(80)
);

create table turma(
	id_turma int primary key
);

create table aluno(
	id_aluno int primary key,
	nome_aluno varchar(80),
	id_turma int,
	foreign key (id_turma) references turma(id_turma)
);

create table aula(
	id_aula int primary key,
	id_professor int,
	foreign key (id_professor) references professores(id_professor)
);

create table aluno_aula(
	id_aluno int,
	id_aula int,
	primary key(id_aluno, id_aula),
	foreign key (id_aluno) references aluno(id_aluno),
	foreign key (id_aula) references aula(id_aula)
);

create table professor_turma(
	id_professor int,
	id_turma int,
	primary key(id_professor, id_turma),
	foreign key (id_professor) references professores(id_professor),
	foreign key (id_turma) references turma(id_turma)
);

insert into professores
	values( 1 , "Mateus"),
			(2 , "Pedro");
select * from professores;

insert into turma
	values (1),
			(2);
select * from turma;

insert into aluno 
	values (1, "Mateus", 1),
			(2, "Marcos", 2);
            
select * from aluno;

insert into aula
	values (1 , 1),
			(2 , 1);
            
select * from aula;

insert into aluno_aula
	values (1 , 1),
			(2, 2);

select * from aluno_aula;

insert into professor_turma
	values (1 , 1),
			(1, 2);
            
select * from professor_turma;

update professores
		set nome_professor = "Paulo"
		where nome_professor = "Mateus";

select * from professores;

update aluno
		set nome_aluno  = "Henrique"
        where nome_aluno = "Mateus";
        
select * from aluno;

delete from professores 
		where nome_professor = "Pedro";
	
insert into aluno
	values (3, "Marcao", 1);
    
delete from aluno 
		where nome_aluno = "Marcao";




            
            
            
			
            
            
	
            



