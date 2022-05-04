FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=JRTB_test_bot
ENV BOT_TOKEN=5312782831:AAERNk-2uBXd-Dd8Nfc807b4XhnnsbEuHRY
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-jar", "/app.jar"]