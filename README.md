# Домашка 18 "Docker"
## Welcome to nginx in DOCKER!

Vagrant поднимает машину с докером и сразу готовит образ докера из Alpine и исходников nginx. Образ так же загружен в dockerHub: https://hub.docker.com/r/4utep/nginx
*Все стенды делаю с винды, поэтому делаю через доп машину линукс.
Пользователю vagrant выданы права на управление docker, для удобства

#### Последовательность действий:
    
    vagrant up
    docker run -d -p 8080:80 4utep/nginx:latest
    
#### Проверка:
    
С хостовой машины на Win(если запускаем контейнер на VM из vagrant) http://192.168.11.100:8080/  

Если запускаем докер локально, то, наверное, http://127.0.0.1:8080/
  