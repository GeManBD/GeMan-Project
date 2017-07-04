update usuario
set nome='Gabriel'
where id=1;

update status
set nome='aguardando compra de peça'
where id=3;

update local
set bloco=1
where id=4;

insert into local
values  (10,100,'Oficina Manutenção',1);

insert into local
values  (20,100,'Almoxarifado',1);

delete from ordem_de_servico
where id=10;

delete from equipamento
where id=7;

insert into equipamento
values  (7,'Ar Condicionado','LG Winter',10, 225784);

update equipamento
set id_local=9
where id=7

update equipamento
set nome='Conjunto Refletor',descricao='Painel de Iluminação',patrimonio=33450
where id=8;

update padrao
set link='[http://padroes.man/AC-Cleaning]'
where id=1;

update padrao
set link='[http://padroes.man/AC-Cleaning]'
where id=1;

update padrao
set link='[http://padroes.man/Bulb-Replacement]'
where id=2;

insert into padrao
values (3,'Troca de Revestimento','[http://padroes.man/Coating Replacement]')