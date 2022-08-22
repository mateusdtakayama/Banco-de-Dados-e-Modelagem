## Exercício 01:

create database Clinica;
use clinica;
create table Sala(
Numero_Sala int NOT NULL PRIMARY KEY,
Andar int NOT NULL UNIQUE,
CHECK (Numero_Sala > 1 and Numero_Sala < 50),
CHECK (Andar < 12),
CRM varchar(15) not null,
foreign key (CRM) references Medicos (CRM)
);

describe sala;
create table Medicos(
CRM varchar(15) primary key not null, 
Nome varchar(40) not null,
Idade int,
CHECK (Idade > 23),
Especialidade char(20) not null default 'Ortopedista',
CPF varchar(15) unique not null,
Data_de_admissao date
);
describe medicos;

create table pacientes(
RG varchar(15) primary key not null,
Nome varchar(40) not null,
Data_de_Nascimento date,
Cidade char(30) default 'Itabuna',
Doenca varchar(40) not null,
Plano_de_saude varchar(40) not null default 'SUS'
);
describe pacientes;

create table funcionarios(
Matricula varchar(15) primary key not null,
Nome varchar(40) not null,
Data_nascimento date not null,
Data_admissao date not null,
Cargo varchar(40) not null default 'assistente médico',
Salario float not null default (510.00)
);
describe funcionarios;

create table consultas(
RG varchar(15) not null,
codigo_consulta int not null primary key,
data_horario datetime,
CRM varchar(15) not null,
foreign key (CRM) references Medicos (CRM),
foreign key (RG) references Pacientes (RG)
);

## Exercício 2:

create database eleicao;

create table cargo(
codigo_cargo int primary key not null,
nome_cargo varchar(30) unique not null,
CHECK ((nome_cargo <> 'Prefeito') and (nome_cargo <> 'Vereador')),
salario float not null default '17000.00'
);

create table cadidato(
numero_candidato int primary key not null,
nome varchar(40) unique not null,
codigo_cargo int not null,
codigo_partido int not null,
codigo_cargo int not null,
codigo_partido int not null,
foreign key (codigo_cargo) references cargo (codigo_cargo),
foreign key (codigo_partido) references partido (codigo_partido)
);

create table partido(
codigo_partido int not null primary key,
sigla char (5) not null unique,
nome varchar(40) unique not null,
numero int not null unique
);

create table eleitor(
titulo_eleitor varchar(30) unique not null,
zona_eleitoral char(5) not null,
sessao_eleitoral char(5) not null,
nome varchar(40) not null
);

create table voto(
titulo_eleitor varchar(3) unique not null, 
numero_candidato int not null,
foreign key (numero_candidato) references candidato (numero_candidato)
);

## Exercício 03

create database revendedora_carros;
use revendedora_carros;

create table automovel(
RENAVAM int primary key not null,
placa int not null unique,
marca varchar(30),
modelo varchar(20),
ano_fabricacao int,
ano_modelo int,
cor varchar(20),
motor varchar(20),
numero_portas int,
tipo_combustivel varchar(30),
preco int,
id_compra int not null unique auto_increment
);

create table clientes(
id_cliente int primary key not null auto_increment,
nome varchar(100) not null,
sobrenome varchar(100) not null,
telefone varchar(20) not null,
id_endereco int not null
);

create table endereco_completo(
id_endereco int primary key auto_increment not null,
Rua varchar(50) not null,
Numero int,
Complemento varchar(100),
Bairro varchar(20),
Cidade varchar(100),
Estado varchar(50),
CEP varchar(8) not null
);

create table vendedores(
codigo_vendedor int primary key auto_increment,
Nome varchar(50),
Sobrenome varchar(50),
Telefone varchar(20),
id_endereco int not null,
Data_admissao date,
Salario_fixo int
);

create table negocio(
id_compra int primary key not null unique auto_increment,
Data_Compra date,
Preco_pago int,
RENAVAM int not null, 
codigo_vendedor int,
id_cliente int not null 
);

alter table automovel add foreign key (id_compra) references negocio (id_compra);
alter table clientes add foreign key (id_endereco) references endereco_completo (id_endereco);
alter table vendedores add foreign key (id_endereco) references endereco_completo (id_endereco);

alter table negocio add foreign key (RENAVAM) references AUTOMOVEL (RENAVAM);
alter table negocio add foreign key (codigo_vendedor) references vendedores (codigo_vendedor);
alter table negocio add foreign key (id_cliente) references clientes (id_cliente);

describe negocio;
