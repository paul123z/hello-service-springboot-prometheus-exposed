# Start with a base image containing Java runtime (JDK 17)
FROM openjdk:17-oracle

# The application's jar file
ARG JAR_FILE=target/hello-service-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]

# Optional: If your application uses a port (e.g., 8080), expose it
EXPOSE 8080
