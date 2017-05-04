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
	   
insert into ocorrencia(id_ocorrencia,id_status,descricao,data,feedback)
values(1,1,'a cadeira esta sem couro','2017-03-15','Revestimento de couro trocado'),
	  (2,1,'o ar condicionado não funciona','2017-03-16','Aparelho limpo e reparado'),
	  (3,2,'problema imagem projetor','2017-03-18','Solicitação de peças em andamento'),
	  (4,2,'computador não liga','2017-04-11','Peças em falta'),
	  (5,1,'mesa bamba','2017-02-21',NULL),
	  (6,1,'constante queda de energia','2016-06-23','Problema solucionado');
	  
insert into status(id_status,nome)
values (1,'resolvido'),
	   (2,'em andamento'),
	   (3,'em espera');
	  
insert into perfil(id_perfil,nome)
values (1,'Aluno'),
	   (2,'Servidor'),
	   (3,'Manutenção');
	   
insert into andar(id_andar,nome)
values (1,'Térreo'),
	   (2,'Primeiro andar'),
	   (3,'Segundo andar'),
	   (4,'Terceiro andar');