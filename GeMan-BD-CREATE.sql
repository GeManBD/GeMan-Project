Create Table Padrao(
	ID int not null primary key,
	Descricao varchar(45),
	Link varchar(45));

Create Table Status(
	ID int not null primary key,
	Nome varchar(45));

Create Table Andar(
	ID int not null primary key,
	Nome varchar(45));

Create Table Plano(
	ID int not null primary key,
	Nome varchar(45),
	Frequencia varchar(45));

Create Table Perfil(
	ID int not null primary key,
	Nome varchar(45));

Create Table Local(
	ID int not null primary key,
	Bloco char(5),
	Nome varchar(45),
	ID_ANDAR int,
	foreign key (id_andar) references andar(id));

Create Table Equipamento(
	ID int not null primary key,
	Nome varchar(45),
	Descricao varchar(45),
	ID_LOCAL int,
	Patrimonio int,
	foreign key (id_local) references local(id));

Create Table Usuario(
	ID int not null,
	Matricula varchar(45),
	Nome varchar(45),
	Login varchar(45),
	Senha varchar(45),
	Email varchar(45),
	ID_PERFIL int,
	primary key(ID,Matricula),
	foreign key (id_perfil) references perfil(id));
	
Create Table Ocorrencia(
	ID int not null primary key,
	Descricao varchar(45),
	Data date,
	Feedback varchar(45),
	ID_STATUS int,
	ID_USUARIO int,
	MATRICULA varchar(45),
	foreign key (id_status) references status(id),
	foreign key (id_usuario,matricula) references usuario(id,matricula));

Create Table Ordem_de_Servico(
	ID int not null primary key,
	Descricao varchar(45),
	Data date,
	ID_EQUIPAMENTO int,
	ID_OCORRENCIA int,
	ID_PLANO int,
	ID_PADRAO int,
	foreign key (id_equipamento) references equipamento(id),
	foreign key (id_ocorrencia) references ocorrencia(id),
	foreign key (id_plano) references plano(id),
	foreign key (id_padrao) references padrao(id));



