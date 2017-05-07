# GeMan:  Sistema de Gestão da Manutenção do IFES
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo:<br>
Gabriel Marchezi: gabriel_marchezi@hotmail.com<br>
Helen França: helenfranca93@gmail.com<br>
Olavo Curátola: olavo.curatola@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados do Sistema de Gestão da Manutenção dos Equipamentos e Instalações do IFES <nome do projeto> 


<br>Sistema de Gestão da Manutenção dos Equipamentos e Instalações do IFES <br>
Analisando o nível de utilização atual dos equipamentos e instalações do Instituto Federal do Espírito Santo - IFES - Campus Serra, principalmente em função do aumento do número de usuários e da importância de se garantir a disponibilidade e reduzir a degradação dos equipamentos, consideramos ser necessário implementar um maior envolvimento dos usuários atraves de um sistema informatizado com interface para smartphones.
O sistema almeja dar suporte à manutenção de salas, laboratórios, banheiros e demais instalações, bem como cadeiras, mesas, bancadas, computadores, monitores, projetores, iluminação, tomadas, modens, sistemas de som, e etc. Consequentemente procuramos viabilzar a implantação de um sistema em que os alunos, professores e demais funcionários possam  comunicar ao setor responsável qualquer mal funcionamento ou falha de equipamentos ou instalações para e destacar a necessidade de manutenção ou troca.
<br>A partir de um smartphone, com câmera e acesso a internet, o usuário preenche um formulário em uma aplicação, ou via site web (portabilidade), gerando uma ocorrência. Os dados são então enviados via sistema de gestão da manutenção ao setor responsável para as providências necessárias. O setor responsável deverá responder aos usuários quanto as providências até a solução definitiva da ocorrência registrada, com posterior avaliação pelos usuários.

### 3.MINI-MUNDO<br>

<br>Descrição do GeMan<br>
<br>   O sistema de gestão de manutenção GeMan objetiva dar suporte à realização dos serviços de manutenção de equipamentos e instalações, bem como às atividades de administração e controle da manutenção. O sistema será composto de:<br>
<br>Cadastro de Local e Instalações, Cadastro de Equipamentos, Identificação de Locais e Equipamentos por Barcode, Cadastro de Usuários, Cadastro de Padrões de Serviço, Cadastro de Planos de Manutenção, Abertura de Ordem de Serviço, Programação da Ordem de Serviço - Execução, Fechamento da Ordem de Serviço – Execução, Histórico de Ordens de Serviço Executadas, Registro de Ocorrências pelo Usuário, Histórico de Ocorrências por Usuário, Feedback ao Usuário, e Avaliação da Solução da Ocorrência pelo Usuário.<br>

<br>    O gerenciamento do sistema é de responsabilidade da equipe de manutenção. O cadastramento dos Locais e Instalações, e dos Equipamentos e a Identificação com Barcode será realizado com base em desenhos e manuais e demais documentos técnicos.<br>
<br>   Os padrões de serviço e a elaboração dos planos de manutenção serão elaborados com base nas recomendações dos fabricantes dos equipamentos, nas melhores práticas das especialidades e na experiência da equipe de manutenção.<br>
<br>   As ocorrências serão geradas pelos usuários cadastrados no sistema que a princípio seriam os alunos, professores e demais funcionários exceto pessoal da equipe de manutenção. O usuário geraria a ocorrência ao se deparar com um mal funcionamento ou indisponibilidade de equipamentos ou instalações. Para isto usaria a interface mobile para descrever e identificar o local ou equipamento, com barcode ou patrimônio, acompanhado eventualmente de uma foto.<br>
<br>   O supervisor de manutenção será responsável por promover a classificação e agrupamento das ocorrências geradas e pela abertura da ordem de serviço para diagnóstico e solução do problema reportado na ocorrência e pelo feedback ao usuário.<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Os protótipos de telas, desenvolvidas para este banco de dados de manutenção, permitirão o acesso por smartphones e via computadores pessoais ou computadores de mesa.<br>
Mobile - https://drive.google.com/open?id=0BwRw4D_ya7GSR1hucE5KUjcxY1U<br>
Desktop - https://drive.google.com/open?id=0BwRw4D_ya7GSeWlONGFMOGxSTUU<br>

#### 4.1 TABELA DE DADOS DO SISTEMA:
    Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    (esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual)

    OBS.: Essa tabela é provisória e representativa.
![Alt text](https://github.com/GeManBD/trab01/blob/master/Tabela%20do%20sistema.PNG)

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/GeManBD/GeMan-Project/blob/master/GeMan%20Conceitual_v5.png?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
![Alt text](https://github.com/GeManBD/GeMan-Project/blob/master/GeMan%20Logico_v0.png?raw=true "Modelo Conceitual")

        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)
        
        
        Entrega até este ponto em: (Data a ser definida)

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        b) inclusão das instruções para execução de outros procedimentos necessários (caso existam)

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        
        
        Entrega até este ponto em: (Data a ser definida)


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
        Entrega até este ponto em: (Data a ser definida)
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)<br>
        Entrega até este ponto em: (Data a ser definida)
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)<br>
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
        Entrega até este ponto em: (Data a ser definida)
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
### OBSERVAÇÕES IMPORTANTES

#### Em tese todos os arquivos do trabalho devem ser compartilhados no git 
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.



