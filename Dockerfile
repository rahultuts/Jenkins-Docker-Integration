# Use official Tomcat base image
FROM tomcat:9.0

# Copy war file to tomcat webapps directory
COPY target/cloud-gen-softech-system.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
