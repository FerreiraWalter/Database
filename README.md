
<h1 align="center">➕Cadastro</h1>

<h3 align="center">🔍 Navegue por dentro do Readme </h3>
<p align="center">
  <a href="#como-iniciar-o-programa-do-jeito-certo">🚀
  Inicio</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#configurando-o-docker">🐋Docker</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#configurando-o-docker">🔧Ambiente</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#para-finalizar">🏁Inicialização</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#para-finalizar">🗺️ Funcionamento</a>
</p>


## 🚀 Como iniciar o programa do jeito certo:
Após realizar clone do **projeto** é necessário verificar se os Softwares a seguir estão baixados e/ou nas seguintes versões:
- 🐋[Docker](https://www.docker.com)
-  ⚙️[nvm](https://github.com/nvm-sh/nvm)
- 🟢[Node.js](https://nodejs.org/): v14+

caso esteja em uma versão inferior, com o nvm instalado, em seu console digite o seguinte comando:
```sh
 nvm install vX.X.X
```
em seguida use a versão instalada:
```sh
 nvm use vX.X.X
```

## 🐳 Configurando o Docker:

O **Docker** inclui todas as dependências necessárias para executar a aplicação, cola esse comando no console para ter acesso a aplicação:
```sh
 docker container run -d --name redis-plm2 -p 6379:6379 redis
```
Obs: Verifique se o **Container** iniciou corretamente usando:
```sh
 docker ps
```
caso não seja o Container **redis-plm2**, digite no seu console:
```sh
 docker start redis-plm2
```

## 🔧 Configurando o ambiente:

Adicione a **Variável de ambiente** seguindo o arquivo **.env.exemple**

## 🚘 Inicialização:
A seguir utilize esse comando para instalar o gerenciador de dependências:
```sh
 npm install
```
e para finalizar, inicie sua aplicação com o seguinte comando:
```sh
 npm run build:start
```

## 🗺️ Funcionamento:
<p align="center"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></p>

- **+Cadastro** enviará um array com id's para o **Back-end** da aplicação (mais_cadastro_api), após isso, busca todas as informações no banco de dados com base no array enviado pelo **Front-end** e alimenta o serviço de fila com esses dados.
- Em seguida envia para uma **Integration Queue** (BULL MQ) um bulk de dados processados, onde um **Woker** vai trabalhar com a Importação para a **Integration API** (mais_cadastro_api) dos produtos mesmo ocorrendo 🟢sucesso ou 🔴falha.
	- O **BULL MQ** usa o Redis como armazenamento de estrutura de dados em memória, implementando um servico de hashmap.
	

