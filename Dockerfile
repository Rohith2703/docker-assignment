# Use an OpenJDK runtime as the base image
FROM java:17

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/docker-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the application's port
EXPOSE 8088

# Command to run the application
CMD ["java", "-jar", "app.jar"]

