# Use a specific version of Tomcat as base image
FROM tomcat:10.1.18-jdk11

# Expose port 8080 to access the application
EXPOSE 8080

# Copy the WAR file from the target directory of your Maven project to the Tomcat webapps directory
COPY target/Todolist.war /usr/local/tomcat/webapps/
