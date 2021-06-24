<h1 align="center">➕Cadastro-API</h1>

<h3 align="center">🔍 Navegue por dentro do Readme </h3>
<p align="center">
  <a href="#como-iniciar-o-programa-do-jeito-certo">🚀Inicio</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#configurando-o-docker">🐋Docker</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#para-finalizar">🏁Final</a>
</p>


## 🚀Como iniciar o programa do jeito certo:
Após realizar clone do **projeto** é necessário verificar se os Softwares a seguir estão baixados e/ou nas seguintes versões:
- 🐋[Docker](https://www.docker.com)
-  ⚙️[nvm](https://github.com/nvm-sh/nvm)
- 🟢[Node.js](https://nodejs.org/): v10+

caso esteja em uma versão inferior, com o nvm instalado, em seu console digite o seguinte comando:
```sh
 nvm install vX.X.X
```
em seguida use a versão instalada:
```sh
 nvm use vX.X.X
```

## 🐳Configurando o Docker:

O **Docker** inclui todas as dependências necessárias para executar a aplicação, cola esse comando no console para ter acesso a aplicação:
```sh
 docker container run -d --name redis-plm2 -p 6379:6379 redis
```

## 🏁Para Finalizar:
A seguir utilize esse comando para instalar o gerenciador de dependências:
```sh
 npm install
```
quando concluir, instale uma dependência que servirá para gerenciar componentes de front-end:
```sh
 bower install
```
e para finalizar, inicie sua aplicação com o seguinte comando:
```sh
 npm run build:start
```
