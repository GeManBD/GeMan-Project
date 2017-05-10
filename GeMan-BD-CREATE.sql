Create Table Padrao(
	ID int not null primary key,
	Descricao varchar(45),
	Link varchar(45));

Create Table Ordem_de_Servico(
	ID int not null primary key,
	ID_local int not null,
	Descricao varchar(45),
	Data date);

Create Table Equipamento(
	ID int not null primary key,
	Nome varchar(45),
	Descricao varchar(45),
	Patrimonio int not null
	id_local int);

Create Table Plano(
	ID int not null primary key,
	Nome varchar(45),
	Frequencia varchar(45));

Create Table Usuario(
	ID int not null primary key,
	Matricula varchar(45),
	Nome varchar(45),
	Login varchar(45),
	Senha varchar(45),
	Email varchar(45),
	ID_perfil int
	);
	
Create Table Perfil(
	ID int not null primary key,
	Nome varchar(45));

Create Table Ocorrencia(
	ID int not null primary key,
	ID_status int not null,
	Descricao varchar(45),
	Data date,
	Feedback varchar(45));

Create Table Status(
	ID int not null primary key,
	Nome varchar(45));

Create Table Local(
	ID int not null primary key,
	ID_andar int not null,
	Bloco char(5),
	Nome varchar(45));

Create Table Andar(
	ID int not null primary key,
	Nome varchar(45));
