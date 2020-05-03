FROM openjdk:8
RUN mkdir -p /opt/store/
COPY ./target/mongodb-app.jar /opt/store/
WORKDIR /opt/store/
EXPOSE 8080
CMD ["java", "-jar", "mongodb-app.jar"]