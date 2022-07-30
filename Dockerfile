FROM openjdk:11
COPY . /app
ENTRYPOINT ["java", "-jar", "app/target/github-workflow-sample2.jar"]
