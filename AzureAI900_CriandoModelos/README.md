# DIO - Microsoft Bootcamp AI - 900
www.dio.me

## Desafio de projeto
Criar um modelo de previsão com seus devidos pontos de extremidade configurados


## Passo a Passo
Primeiramente efetuei o download dos dados em https://aka.ms/bike-rentals

1 - Criei um recurso no Azure Machine Learning WorkSpace com os dados abaixo:
:Resource Group : LABAI-900
WorkSpace Name : laboratorioai900
Region : East US
o restante das opções deixei no padrão e fiz a criação do recurso

2 - Após a criação entrei no recurso criado de nome laboratorioai900

3 - Acessei o studio do endereço https://ml.azure.com/

4 - Criei um workspace com o nome de labaula1
 Entrei no workspace laboratorioai900

5 - Entrei na opção [ML Automatizado] e cliquei em Novo Trabalho de [ML automatizado] e preenchi com os dados abaixo:
Nome do Trabalho :  mslearn-bike-automl
Nome do experimento : mslearn-bike-rental
Descrição :  Aprendizado de máquina automatizado para previsao de aluguel de bicicletas

6 - Cliquei em [Avançar]
  em Tipo de Tarefa selecionei [Regressão]
  Cliquei em [Criar] e preenchi conforme abaixo
  Nome e o tipo do ativo de dados : alugueldebicicletas
  Descrição :  Dados históricos de aluguel de bicicletas
Tipo : Tabular
Fonte de dados : De Arquivos Locais
 Carreguei o arquivo local baixado do site : https://aka.ms/bike-rentals  de nome daily-bike-share.csv

 cliquei em [avançar]  para abrir a opção de Esquema
Cliquei em [Avançar]
Na parte de Examinar cliquei em[Criar]

7 - Após o trabalho ser criado cliquei em [alugueldebicicletas]  e [Avançar]
  efetuei as devidas configurações em Configurações de Tarefas
  Coluna de destino : Rentals

  Máximo de avaliações 3
  Máximo de avaliações simultâneas 3
  Máximo de nós 3
  Limite de pontuação da métrica 0,085
  Tempo limite do experimento (minutos) 15
  Tempo limite de iteração (minutos). 15

8 - na parte Computação deixei tudo no padrão e clliquei em [Avançar]
Standard_DS3_v2 (4 núcleo(s), 14GB de RAM, 28 GB de armazenamento, $0.29/hr)

9 - para finalizar cliquei em [Enviar trabalho de Treinamento]





