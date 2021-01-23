# OPEN VAGAS

Durante o evento Ruby Summit Brasil ocorrido em dezembro de 2020, um dos patrocinadores fez um sistema de vagas para que as empresas que estivessem participando do evento divulgassem suas vagas lá em seu painel.

Visto que o sistema todo foi feito em Ruby on Rails, isso me motivou a recriar esse sistema passo a passo ensinando em meu canal no Youtube.

Um disclaimer, a tela inicial será feita com layout do Bootstrap, uma vez que eu não tenho autorização para usar o design original. Dito isto, convido aqueles que quiserem contribuir com boas views dentro dos padrões de UI/UX a ficarem à vontade, pois eu não sou o cara do designer.

# Guia de contribuição

## Como contribuir

1. Faça um Fork desse repositório para sua máquina local.

	* Faça um Fork e clona para sua máquina local
	* Configure esse repositório como seu upstream. Assim você pode manter sua cópia sincronizada com o original. Para fazer isso, vá para seu terminal e `cd` no diretório da sua versão clonada. Então use um dos seguintes comandos:
    
    Se você tiver uma ssh configurada com Git
	```
	$ git remote add upstream git@github.com:frankyston/openvagas.git
	```
	De outro modo
	```
	$ git remote add upstream https://github.com/frankyston/openvagas.git
	```

`ATENÇÂO`

2. Antes de começar a trabalhar em sua feature, crie um branch e o nomeie de acordo com os seguintes exemplos:

	Sendo uma nova feature 
	```
	$ git checkout -b feature/feature-name`
	```
	Sendo uma correção de bug
	```
	$ git checkout -b fix/fixed-bug-name
	```

3. Quando tiver finalizado e pronto para submeter um Pull request:

**Dê um Push do seu branch para o seu fork**
```
$ git push origin <nome-do-seu-branch>
```
**Crie um pull request**
* Vá para o seu fork no Github depois de ter dado push no seu branch. Um novo botão deve estar visível perto do topo da página. Ele permite a você criar um pull request para o repositório original.

* Por favor, caso exista uma issue, mencione-a no corpo do seu pull request.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
