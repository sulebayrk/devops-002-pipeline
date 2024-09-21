#uygulamanın çalışması için JDK lazım
FROM openjdk:17

#projemizin jar dosyasının konumu
ARG JAR_FILE=target/*.jar

#Projenin jar halini DOCKER'IN içine şu isimle kopyala
COPY ${JAR_FILE} my-application.jar

#terminalden çalıştırmak istediğin komutları CMD ile kullanıyorsunuz
CMD apt-get update
CMD apt-get upgrade -y

#iç portu sabitlemek için
EXPOSE 8083

#uygulamanın çalışacağı komut
ENTRYPOINT ["java","-jar","my-application.jar"]
