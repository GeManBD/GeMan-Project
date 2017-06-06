/*Seleciona os andares acima do Térreo */
SELECT NOME FROM ANDAR WHERE ID >  1;

/*Seleciona o nome dos usuários que fazem parte da equipe de manutenção */
SELECT NOME FROM USUARIO WHERE ID_PERFIL = 3;

/*Seleciona o numero de patrimonio de todos os aparelhos de ar-condicionado */
SELECT PATRIMONIO FROM EQUIPAMENTO WHERE NOME = 'Ar condicionado';