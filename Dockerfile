baseImage: maven:3.8.4-openjdk-17-slim
COPY . /app
WORKDIR /app
RUN mvn clean install -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "target/spring-boot-spring-security-jwt-authentication-0.0.1-SNAPSHOT.jar"]