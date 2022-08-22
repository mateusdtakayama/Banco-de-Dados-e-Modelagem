create database controle_de_livros;

use controle_de_livros;

create table editoras(
	id_editora int primary key auto_increment,
    cnpj varchar(14),
    nome_editora varchar(250)
);

create table autores(
	id_autor int primary key auto_increment,
    cpf varchar(11),
    nome_autor varchar(250)
);

create table categoria(
	id_categoria int primary key auto_increment,
    nome_categoria varchar(250)
);

create table livros(
	id_livro int primary key auto_increment,
    nome_livro varchar(250),
    edicao int,
    data_impressao date,
    id_editora int,
    foreign key (id_editora) references editoras(id_editora)
);

create table livro_autor(
	id_autor int,
    id_livro int,
    primary key (id_autor,id_livro),
    foreign key (id_autor) references autores(id_autor),
    foreign key (id_livro) references livros(id_livro)
    
);

create table livro_caregoria(
	id_livro int,
    id_categoria int,
    primary key (id_livro,id_categoria),
    foreign key (id_livro) references livros(id_livro),
    foreign key (id_categoria) references categoria (id_categoria)
);

insert into autores
	values(1, 85903000, "Mateus");
insert into autores
	values(2, 86904000, "Delai");
    
select * from autores;

insert into editoras
	values(1, 73477095000102, "Editora1"),
			(2, 65194990000191, "Editora2");
    
select * from editoras;

insert into categoria
	values(1, "Categoria1"),
			(2, "Categoria2");
select * from categoria;

insert into livros
	values(1, "Livro1", 20 ,"2022-08-25", 1),
		(2, "Livro2", 15 ,"2022-08-25", 2);
        
update autores
	set id_autor = 5
    where id_autor = 1;

select * from autores;

delete from autores
	where id_autor = 5;

update categoria
	set id_categoria = 3
    where id_categoria = 2;
    
delete from categoria 
	where id_categoria = 3;
	
update editoras
	set id_editora = 3
	where id_editora = 2;

delete from editoras
	where id_Editora = 3;
    
select * from editoras;

update livros
	set id_livro = 4
    where id_livro = 2;

select * from livros;

delete from livros
	where id_livro = 4;
    
select * from autores;
select * from categoria;
select * from editoras;
select * from livros;



