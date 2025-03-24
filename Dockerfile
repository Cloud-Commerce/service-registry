# Use an official eclipse-temurin runtime as the base image
FROM eclipse-temurin:21-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/service-registry*.jar service-registry.jar

# Expose the port that the service-registry will run on
EXPOSE 8761

# Command to run the application
ENTRYPOINT ["java", "-jar", "service-registry.jar"]