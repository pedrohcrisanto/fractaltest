# Fractal Test - Implementação
## Configuração

Clone o projeto

```sh
$ git clone https://github.com/pedrohcrisanto/fractaltest.git
```

Instale as dependências
```sh
$ cd /fractaltest/
$ sudo docker-compose run --rm api bundle install
```

Crie o banco, migre as tabelas
```sh
$ sudo docker-compose run --rm api bundle exec rails db:create db:migrate 
```

Rode a aplicação em um terminal
```sh
$ sudo docker-compose up
```

Popule o banco de dados(Lembre de dexiar um terminal rodando com o servidor)
```sh
$ sudo docker-compose run --rm api bundle exec rails db:seed
```

Abra o seu navegador(de preferência Chrome ou Firefox) e navegue para `localhost:3000`

Para rodar os Testes
```sh
$ sudo docker-compose run --rm api bundle exec rspec
```
## Documentação

Rotas de CRUD padrão Scaffold com os objetos => Movie, Actor e Act.
Para realizar busca utilize a rota /search com o parametro query. exemplo => localhost:3000/search?query=harry



