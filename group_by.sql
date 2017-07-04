select * from ordem_de_servico
group by ordem_de_servico.id
order by ordem_de_servico.id_padrao

select * from usuario
group by usuario.id,usuario.matricula
order by usuario.nome

select * from padrao
group by padrao.id
order by link

select * from ocorrencia
group by ocorrencia.id
order by ocorrencia.id_status

select status.nome,ocorrencia.id_status, count(ocorrencia.id_status) as "Quant" from ocorrencia
inner join status on (status.id=ocorrencia.id_status)
group by status.nome,ocorrencia.id_status
order by ocorrencia.id_status,status.nome,"Quant"