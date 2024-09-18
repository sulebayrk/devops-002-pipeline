#uygulamanın çalışması için JDK lazım
FROM openjdk:17

#projemizin jar dosyasının konumu
ARG JAR_FILE=target/*.jar

#Projenin jar halini DOCKER'IN içine şu isimle kopyala
COPY ${JAR_FILE} devops-hello-app.jar

#terminalden çalıştırmak istediğin komutları CMD ile kullanıyorsunuz
CMD apt-get update
CMD apt-get upgrade -y

#iç portu sabitlemek için
EXPOSE 8080

#uygulamanın çalışacağı komut
ENTRYPOINT ["java","-jar","devops-hello-app.jar"]
