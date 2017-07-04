select local.nome "Local",equipamento.nome "Equipamento" from equipamento
inner join local on (equipamento.id_local=local.id)
order by "Local","Equipamento";

select local.nome "Local",equipamento.nome "Equipamento",ocorrencia.descricao "Ocorrência",ordem_de_servico.descricao "Ordem de Serviço" from ordem_de_servico
inner join equipamento on (equipamento.id=ordem_de_servico.id_equipamento)
inner join local on (equipamento.id_local=local.id)
inner join ocorrencia on (ordem_de_servico.id_ocorrencia=ocorrencia.id)
order by "Local","Equipamento","Ocorrência","Ordem de Serviço";

select local.nome "Local",equipamento.nome "Equipamento",ocorrencia.descricao "Ocorrência",usuario.nome "Usuário-Autor",ordem_de_servico.descricao "Ordem de Serviço" from ordem_de_servico
inner join equipamento on (equipamento.id=ordem_de_servico.id_equipamento)
inner join local on (equipamento.id_local=local.id)
inner join ocorrencia on (ordem_de_servico.id_ocorrencia=ocorrencia.id)
inner join usuario on (usuario.id=ocorrencia.id_usuario)
order by "Local","Equipamento","Ocorrência","Usuário-Autor","Ordem de Serviço";

select local.nome "Local",equipamento.nome "Equipamento",ocorrencia.descricao "Ocorrência",usuario.nome "Usuário-Autor",status.nome "Status",ordem_de_servico.descricao "Ordem de Serviço" from ordem_de_servico
inner join equipamento on (equipamento.id=ordem_de_servico.id_equipamento)
inner join local on (equipamento.id_local=local.id)
inner join ocorrencia on (ordem_de_servico.id_ocorrencia=ocorrencia.id)
inner join usuario on (usuario.id=ocorrencia.id_usuario)
inner join status on (status.id=ocorrencia.id_status)
order by "Local","Equipamento","Ocorrência","Usuário-Autor","Status","Ordem de Serviço";

update ordem_de_servico
set id_padrao=6
where id=5;

update ordem_de_servico
set descricao='Fazer teste no circuito'
where id=4;

update ocorrencia
set feedback='Comprando novo suporte'
where id=5;

insert into padrao
values (6,'Troca de Suporte da Mesa','[http://padroes.man/L-frame Replacement]');

delete from padrao
where id=6;

select local.nome "Local",equipamento.nome "Equipamento",ocorrencia.descricao "Ocorrência",usuario.nome "Usuário-Autor",status.nome "Status",ordem_de_servico.descricao "Ordem de Serviço",padrao.link "Padrão" from ordem_de_servico
inner join equipamento on (equipamento.id=ordem_de_servico.id_equipamento)
inner join local on (equipamento.id_local=local.id)
inner join ocorrencia on (ordem_de_servico.id_ocorrencia=ocorrencia.id)
inner join usuario on (usuario.id=ocorrencia.id_usuario)
inner join status on (status.id=ocorrencia.id_status)
inner join padrao on (padrao.id=ordem_de_servico.id_padrao)
order by "Local","Equipamento","Ocorrência","Usuário-Autor","Status","Ordem de Serviço";
