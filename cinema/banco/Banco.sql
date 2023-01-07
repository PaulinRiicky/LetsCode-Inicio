CREATE DATABASE Cinema;
#DROP DATABASE Cinema;

USE Cinema;

CREATE TABLE Ator(
	id_ator int primary key not null auto_increment,
	nome_ator varchar(45) not null,
    sexo varchar(2), #inclusão (Não Binário)
    dt_nascimento date not null
);


CREATE TABLE Diretor(
	id_diretor int primary key not null auto_increment,
	Nome_diretor varchar(45) not null,
    Nacionalidade varchar(45) not null,
    Dt_Nascimento date not null,
    sexo enum('F', 'M', 'NB')
);


CREATE TABLE Genero(
	Id_genero int primary key not null auto_increment,
    Genero varchar(45)
);


CREATE TABLE Filme(
	Id_filme int primary key not null auto_increment,
    Nome_filme varchar(45) not null, 
    Ano_lancamento int(4) not null,
    Duracao int(3) not null,
    
    FK_Id_genero int,
    FK_Id_diretor int,
    
    constraint FK_id_genero foreign key(FK_Id_genero) references Genero(Id_genero),
    constraint FK_id_diretor foreign key(FK_Id_diretor) references Diretor(Id_diretor) 
);

	#Tabela de ligação N para N
    
CREATE TABLE Filme_e_ator(
	FK_Id_filme int not null,
    FK_Id_ator int not null,
    
    constraint FK_id_filme foreign key(FK_Id_filme) references Filme(Id_filme),
    constraint FK_id_ator foreign key(FK_Id_ator) references Ator(Id_ator),
    
    #Transforma os dois campos em uma chave primaria (ao mesmo tempo em que são chaves estrangeiras)
    primary key(FK_Id_filme, FK_Id_ator)
);

CREATE TABLE Usuario(
	id_usuario int primary key auto_increment,
    nome_usuario varchar(45) not null,
    email_usuario varchar(45),
    senha varchar(20) not null, 
    nacionalidade varchar(20) default 'Brasileiro',
    tipo_usuario enum('Admin','Comum') default 'Comum',
    data_hora datetime default now()
);