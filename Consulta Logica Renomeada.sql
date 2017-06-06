/* Selecionar equipamentos do primeiro andar com patrimonio menor que 900000 renomeando as colunas*/
select equipamento.patrimonio as "Patrimônio", equipamento.nome as "Equipamentos do Primeiro Andar" from equipamento
inner join local
on (local.id_andar=2)
group by equipamento.patrimonio, equipamento.nome having equipamento.patrimonio<900000
order by equipamento.patrimonio

/* Selecionar ordens de serviço anteriores a 01/07/2017 que atendem as ocorrências*/
select ordem_de_servico.descricao as "OS - Aberta", ocorrencia.descricao as "Problema Relatado" from ordem_de_servico
inner join ocorrencia
on (ocorrencia.id=ordem_de_servico.id_ocorrencia )
group by ocorrencia.id, ordem_de_servico.descricao,ordem_de_servico.data<='2017/07/01' having ordem_de_servico.data<='2017/07/01'
order by ocorrencia.id