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
	   
insert into ocorrencia(id,id_status,descricao,data,feedback)
values(1,1,'a cadeira esta sem couro','2017-03-15','Revestimento de couro trocado'),
      (2,1,'o ar condicionado não funciona','2017-03-16','Aparelho limpo e reparado'),
      (3,2,'problema imagem projetor','2017-03-18','Solicitação de peças em andamento'),
      (4,2,'computador não liga','2017-04-11','Peças em falta'),
      (5,1,'mesa bamba','2017-02-21',NULL),
      (6,1,'constante queda de energia','2016-06-23','Problema solucionado');
	  
insert into status(id,nome)
values (1,'resolvido'),
       (2,'em andamento'),
       (3,'em espera');
	  
insert into perfil(id,nome)
values (1,'Aluno'),
       (2,'Servidor'),
       (3,'Manutenção');
	   
insert into andar(id,nome)
values (1,'Térreo'),
       (2,'Primeiro andar'),
       (3,'Segundo andar'),
       (4,'Terceiro andar');

insert into plano(id,nome,frequencia)
values (1,'Ar condionado','12 meses'),
       (2,'Elétrica','18 meses'),
       (3,'Hidráulica','15 meses'),
       (4,'Refeitório','6 meses');


insert into ordem_de_servico(id,id_local,descricao,data)
values (1,1,'Trocar revestimento','2017-03-17'),
       (2,2,'Verificar o gás','2017-03-20'),
       (3,3,'Trocar Lente','2017-07-05'),
       (4,1,'Fazer teste de peças','2017-06-18'),
       (5,4,'Verificar calço','2017-03-22'),
       (6,5,'Troca de Lampada','2017-04-17'),
       (7,6,'Verificar possíveis danos na rede elétrica','2016-07-28'),
       (8,8,'Verificar tomadas dos microondas','2017-04-18'),
       (9,7,'Reforçar o aterramento, se necessário','2017-10-27'),
       (10,9,'Realizar limpeza de filtros e troca de gás','2017-07-14');



insert into local(id,id_andar,bloco,nome)
values (1,1,'2','Laboratório 208'),
       (2,1,'1','Sala 104'),
       (3,1,'1','Sala 106'),
       (4,2,NULL,'Biblioteca'),
       (5,1,NULL,'Pátio'),
       (6,1,'7','Sala 704'),
       (7,1,'3','Sala 305'),
       (8,1,NULL,'Refeitório'),
       (9,2,NULL,'Auditório');


insert into padrao(id,descricao,link)
values (1,'Limpeza - Ar condicionado',NULL),
       (2,'Troca - Lâmpada',NULL),
       (3,'Trocar Revestimento',NULL);

insert into equipamento(id,nome,descricao,patrimonio,id_local)
values (1,'Cadeira','Desk-2008',123456,1),
       (2,'Ar condicionado','LG winter',265648,2),
       (3,'Projetor','EPSON Light',865758,3),
       (4,'Computador','DELL',156224,1),
       (5,'Mesa','Desk-2008',95653,4),
       (6,'Bancada','SEG',7465847,7),
       (7,'Ar condicionado','LG Winter',794385023,9);






