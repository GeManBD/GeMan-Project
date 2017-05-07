CREATE DATABASE "GeMan-BD"
	WITH 
    	OWNER = "Curatola"
    	ENCODING = 'UTF8'
    	LC_COLLATE = 'English_United States.1252'
    	LC_CTYPE = 'English_United States.1252'
    	TABLESPACE = pg_default
    	CONNECTION LIMIT = -1;

Create Table Padrao(
	Codigo int not null,
	Descricao varchar(45),
	Link varchar(45));

Create Table Ordem_de_Servico(
	Id_ordem_servico int not null,
	Id_local int not null,
	Descricao varchar(45),
	Data date);

Create Table Equipamento(
	Id_equipamento int not null,
	Nome varchar(45),
	Descricao varchar(45),
	Patrimonio int not null);

Create Table Plano(
	Id_plano_manutencao int not null,
	Nome varchar(45),
	Frequencia varchar(45));

Create Table Usuario(
	Id_perfil int not null,
	Matricula varchar(45),
	Nome varchar(45),
	Login varchar(45),
	Senha varchar(45),
	Email varchar(45));
	
Create Table Perfil(
	Id_perfil int not null,
	Nome varchar(45));

Create Table Ocorrencia(
	Id_ocorrencia int not null,
	Id_status int not null,
	Descricao varchar(45),
	Data date,
	Feedback varchar(45));

Create Table Status(
	Id_status int not null,
	Nome varchar(45));

Create Table Local(
	Id_local int not null,
	Id_andar int not null,
	Bloco char(5),
	Nome varchar(45));

Create Table Andar(
	Id_andar int not null,
	Nome varchar(45));

	
	
	
	
	