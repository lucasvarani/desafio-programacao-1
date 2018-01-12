#Requerimentos e instruções

## Requerimentos

Ruby 2.2

Rails 4

Mysql*

*A dependencia é Mysql, mas pode ser alterado para Postgresql no config/database.yml

## Configuração do ambiente
Em seu terminal, rode os seguintes comandos:
1. Clone o repositório em seu ambiente local
<code>git clone https://github.com/lucasvarani/desafio-programacao-1.git</code>
2. Entre no diretório do projeto:
<code>cd desafio-programacao-1</code>
3. Rode o bundle
<code>bundle install</code>
4. Crie o banco de dados
<code>rake db:create</code>
5. Rode o migrate
<code>rake db:migrate</code>
6. Inicie o server
<code>rails server</code>


## Instruções
Entrando no http://localhost:3000/ você ira se deparar com uma tela de login, clique em 'Criar uma conta' preencha os campos e salve.

Você irá voltar para a tela de login, preeccha os campos com seus dados de login e clique em 'Entrar', depois de logar você entrara na página principal, clique em "+ Novo Arquivo", para entrar na página de inserção do arquivo.

Na página de inserção, você terá duas opções, se tiver um arquivo com os dados já prontos basta clicar em "adicionar arquivo", escolher seu arquivo e depois clicar em "Salvar", caso não tenha nenhum arquivo, basta preencher os campos normalmente e depois salvar.

Ao enviar um arquivo novo, os dados antigos sao apagados, pois o objetivo do desafio era processar o arquivo que tiver sido selecionado.

Salvando o arquivo você será redirecionado para a página principal, aonde tera todos os dados inseridos, nessa página você tera a opção de exibir cada item individualmente, editar ou excluir.




# Desafio de programação 1
A idéia deste desafio é nos permitir avaliar melhor as habilidades de candidatos à vagas de programador, de vários níveis.

Este desafio deve ser feito por você em sua casa. Gaste o tempo que você quiser, porém normalmente você não deve precisar de mais do que algumas horas.

## Instruções de entrega do desafio
1. Primeiro, faça um fork deste projeto para sua conta no Github (crie uma se você não possuir).
1. Em seguida, implemente o projeto tal qual descrito abaixo, em seu próprio fork.
1. Por fim, empurre todas as suas alterações para o seu fork no Github e envie um pull request para este repositório original. Se você já entrou em contato com alguém da Myfreecomm sobre uma vaga, avise também essa pessoa por email, incluindo no email o seu usuário no Github.

## Instruções alternativas de entrega do desafio (caso você não queira que sua submissão seja pública)
1. Faça um clone deste repositório.
1. Em seguida, implemente o projeto tal qual descrito abaixo, em seu clone local.
1. Por fim, envie via email um arquivo patch para seu contato na Myfreecomm.

## Descrição do projeto
Você recebeu um arquivo de texto com os dados de vendas da empresa. Precisamos criar uma maneira para que estes dados sejam importados para um banco de dados.

Sua tarefa é criar uma interface web que aceite upload de arquivos, normalize os dados e armazene-os em um banco de dados relacional.

Sua aplicação web DEVE:

1. Aceitar (via um formulário) o upload de arquivos separados por TAB com as seguintes colunas: purchaser name, item description, item price, purchase count, merchant address, merchant name. Você pode assumir que as colunas estarão sempre nesta ordem, que sempre haverá dados em cada coluna, e que sempre haverá uma linha de cabeçalho. Um arquivo de exemplo chamado example_input.tab está incluído neste repositório.
1. Interpretar ("parsear") o arquivo recebido, normalizar os dados, e salvar corretamente a informação em um banco de dados relacional.
1. Exibir a receita bruta total representada pelo arquivo enviado após o upload + parser.
1. Ser escrita obrigatoriamente em Ruby 2.0+ ou Python 2.7+ (caso esteja entrevistando para uma vaga específica, utilize a linguagem solicitada pela vaga).
1. Ser simples de configurar e rodar, funcionando em ambiente compatível com Unix (Linux ou Mac OS X). Ela deve utilizar apenas linguagens e bibliotecas livres ou gratuitas.

Sua aplicação web não precisa:

1. Lidar com autenticação ou autorização (pontos extras se ela fizer, mais pontos extras se a autenticação for feita via OAuth).
1. Ser escrita usando algum framework específico (mas não há nada errado em usá-los também, use o que achar melhor).
1. Ter uma aparência bonita.

## Avaliação
Seu projeto será avaliado de acordo com os seguintes critérios.

1. Sua aplicação preenche os requerimentos básicos?
1. Você documentou a maneira de configurar o ambiente e rodar sua aplicação?
1. Você seguiu as instruções de envio do desafio?

Adicionalmente, tentaremos verificar a sua familiarização com as bibliotecas padrões (standard libs), bem como sua experiência com programação orientada a objetos a partir da estrutura de seu projeto.

### Referência

Este desafio foi baseado neste outro desafio: https://github.com/lschallenges/data-engineering
