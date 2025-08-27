# Use JDK 17 for the runtime stage
FROM eclipse-temurin:17-jdk-alpine AS runtime
WORKDIR /app
COPY --from=build /app/target/spring-petclinic-*.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
     