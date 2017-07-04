create view Ocorrencia_Autor as 
(select usuario.nome,ocorrencia.descricao from ocorrencia 
inner join usuario on (usuario.id=ocorrencia.id_usuario)
group by usuario.id,usuario.nome,ocorrencia.descricao order by usuario.id);

select * from Ocorrencia_Autor;

create view OS_Padrao as 
(select ordem_de_servico.descricao,padrao.link from ordem_de_servico 
inner join padrao on (ordem_de_servico.id_padrao=padrao.id) 
group by ordem_de_servico.id,padrao.link order by ordem_de_servico.id);

select* from OS_Padrao;