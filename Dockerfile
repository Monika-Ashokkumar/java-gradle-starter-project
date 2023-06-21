# Use the official Gradle image as the base image
FROM gradle:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the build.gradle and settings.gradle files to the container
COPY build.gradle .
COPY settings.gradle .

# Copy the source code to the container
COPY src/ src/

# Run Gradle build inside the container
RUN gradle build

# Specify the command to run the application
CMD ["gradle", "run"]
