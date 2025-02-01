# Используем официальное изображение OpenJDK как базовый образ
FROM openjdk:8-jdk-alpine

# Указываем рабочий каталог внутри контейнера
WORKDIR /app

# Копируем собранный JAR файл в контейнер
ADD target/springBootDemo-0.0.1-SNAPSHOT.jar app.jar

# Открываем порт, который будет слушать наше приложение
EXPOSE 8080

# Запускаем приложение с помощью команды java
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
