# frramentas utilizadas
ruby version 3.2.3
rails version 7.1.3
nginx
docker

# iniciar projeto

docker-compose build ou docker compose build

docker-compose up ou docker compose up

# variaveis de ambiente

1 - docker/app/Dockerfile
RAILS_ENV 
RAKE_ENV 
BUNDLE_DEPLOYMENT modificar de 1 para 0 

# instalar nova dependencia

1 - acessar container pelo comando: docker exec -it ruby_on_rails-app-1 bash

2 - execuatar: bin/rails g ... 
ou 
3 - bin/rake ... 
ou 
4 - bin/bundle exec ...