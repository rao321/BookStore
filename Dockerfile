# Base Alpine Linux based image with OpenJDK JRE only
FROM openjdk:8-jre-alpine

# copy application WAR (with libraries inside)
COPY target/bookstore-${VERSION}-SNAPSHOT.jar /bookstore.jar

# specify default command
CMD ["/usr/bin/java", "-jar", "/bookstore.jar"]
