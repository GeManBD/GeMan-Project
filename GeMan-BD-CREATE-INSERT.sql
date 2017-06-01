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

insert into perfil(id,nome)
values (1,'Aluno'),
       (2,'Servidor'),
       (3,'Manutenção');

insert into status(id,nome)
values (1,'resolvido'),
       (2,'em andamento'),
       (3,'em espera');

insert into andar(id,nome)
values (1,'Térreo'),
       (2,'Primeiro andar'),
       (3,'Segundo andar'),
       (4,'Terceiro andar');

insert into local(id,bloco,nome,id_andar)
values (1,'2','Laboratório 208',1),
       (2,'1','Sala 104',1),
       (3,'1','Sala 106',1),
       (4,NULL,'Biblioteca',2),
       (5,NULL,'Pátio',1),
       (6,'7','Sala 704',1),
       (7,'3','Sala 305',1),
       (8,NULL,'Refeitório',1),
       (9,NULL,'Auditório',2);

insert into plano(id,nome,frequencia)
values (1,'Ar condionado','12 meses'),
       (2,'Elétrica','18 meses'),
       (3,'Hidráulica','15 meses'),
       (4,'Refeitório','6 meses');

insert into usuario(id,matricula,nome,login,senha,email,id_perfil)
values (1,'20151bsi0380','gabriel','ggchezi','123','gchezi@gmail.com',1),
       (2,'20151bsi0436','Marcelo','mmendes','777','mmendes@gmail.com',1),
       (3,'20152bsi5849','Olavo','olavoc','abc123','olavocuratola@gmail.com',1),
       (4,'20142bsi0289','Helen','helenfm','helenzinhas2','helenfranca93@gmail.com',1),
       (5,'20151tpmi0252','João','joaoch','jones','jojo@gmail.com',3),
       (6,'IF123','Daniel','daniel','9565','dan.iel@gmail.com',3),
       (7,'IF346','Vanessa L.','vanessa','54367','vanzinha@gmail.com',2),
       (8,'IF026','Daniela','daniela','4687','dan.iela@gmail.com',3),
       (9,'IF009','Maria Lu','maria','ma123','maria.if@gmail.com',3),
       (10,'IF375','Lino Junior','lino','3755','lino.if@gmail.com',3);
	   
insert into ocorrencia(id,descricao,data,feedback,id_status,id_usuario,matricula)
values(1,'a cadeira esta sem couro','2017-03-15','Revestimento de couro trocado',1,1,'20151bsi0380'),
      (2,'o ar condicionado não funciona','2017-03-16','Aparelho limpo e reparado',1,2,'20151bsi0436'),
      (3,'problema imagem projetor','2017-03-18','Solicitação de peças em andamento',2,3,'20152bsi5849'),
      (4,'computador não liga','2017-04-11','Peças em falta',2,4,'20142bsi0289'),
      (5,'mesa bamba','2017-02-21',NULL,1,5,'20151tpmi0252'),
      (6,'constante queda de energia','2016-06-23','Problema solucionado',1,7,'IF346');

insert into equipamento(id,nome,descricao,id_local,patrimonio)
values (1,'Cadeira','Desk-2008',1,123456),
       (2,'Ar condicionado','LG winter',2,265648),
       (3,'Projetor','EPSON Light',3,865758),
       (4,'Computador','DELL',1,156224),
       (5,'Mesa','Desk-2008',4,95653),
       (6,'Bancada','SEG',7,7465847),
       (7,'Ar condicionado','LG Winter',9,794385023),
       (8,'Lâmpada','Light',5,NULL),
       (9,'Tomada','Tomada do microondas',8,NULL);
	 
insert into ordem_de_servico(id,descricao,data,id_equipamento,id_ocorrencia,id_plano,id_padrao)
values (1,'Trocar revestimento','2017-03-17',1,1,NULL,NULL),
       (2,'Verificar o gás','2017-03-20',2,2,NULL,NULL),
       (3,'Trocar Lente','2017-07-05',3,3,NULL,NULL),
       (4,'Fazer teste de peças','2017-06-18',4,4,NULL,NULL),
       (5,'Verificar calço','2017-03-22',5,5,NULL,NULL),
       (6,'Troca de Lampada','2017-04-17',8,NULL,NULL,NULL),
       (7,'Verificar possíveis danos na rede elétrica','2016-07-28',8,6,NULL,NULL),
       (8,'Verificar tomadas dos microondas','2017-04-18',9,NULL,NULL,NULL),
       (9,'Reforçar o aterramento, se necessário','2017-10-27',6,NULL,NULL,NULL),
       (10,'Realizar limpeza de filtros e troca de gás','2017-07-14',7,NULL,NULL,NULL);

insert into padrao(id,descricao,link)
values (1,'Limpeza - Ar condicionado',NULL),
       (2,'Troca - Lâmpada',NULL),
       (3,'Trocar Revestimento',NULL);







