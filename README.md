# Проект базы данных для приложения по аренде автомобилей

## Запуск базы данных в контейнере

Для сборки докер образа с текущими скриптами бд на основе образа mariadb
```
sudo docker build -t car-rent-database .
```

```
sudo docker run -d --name car-rent-database -p 3306:3306 car-rent-database
```

