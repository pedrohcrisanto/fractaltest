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

Popule o banco de dados<br>
<strong>Obs.:</strong> Lembre-se de deixar um servidor local rodando!
```sh
$ sudo docker-compose run --rm api bundle exec rails db:seed
```

Para rodar os Testes
```sh
$ sudo docker-compose run --rm api bundle exec rspec
```
## Documentação

Rotas de CRUD padrão Scaffold com os objetos => <strong>Movie, Actor e Act.</strong>
<br>
Para realizar busca de filmes utilize a rota <strong>/search</strong> com o parametro query.<br> Ex.: => `localhost:3000/search?query=harry`



