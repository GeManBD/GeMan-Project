select ordem_de_servico.descricao "Ordem de Serviço",ocorrencia.descricao "Ocorrência" from ordem_de_servico
left outer join ocorrencia on (ordem_de_servico.id_ocorrencia=ocorrencia.id)
group by ordem_de_servico.descricao,ocorrencia.descricao

select ordem_de_servico.descricao "Ordem de Serviço",ocorrencia.descricao "Ocorrência" from ordem_de_servico
left outer join ocorrencia on (ordem_de_servico.id_ocorrencia=ocorrencia.id)
group by ordem_de_servico.descricao,ocorrencia.descricao
having ocorrencia.descricao is not null

select ordem_de_servico.descricao "Ordem de Serviço",ocorrencia.descricao "Ocorrência" from ordem_de_servico
right outer join ocorrencia on (ordem_de_servico.id_ocorrencia=ocorrencia.id)
group by ordem_de_servico.descricao,ocorrencia.descricao

select ordem_de_servico.descricao "Ordem de Serviço",padrao.link "Padrão" from ordem_de_servico
right outer join padrao on (ordem_de_servico.id_padrao=padrao.id)
group by ordem_de_servico.descricao,padrao.link

select ordem_de_servico.descricao "Ordem de Serviço",padrao.link "Padrão" from ordem_de_servico
left outer join padrao on (ordem_de_servico.id_padrao=padrao.id)
group by ordem_de_servico.descricao,padrao.link