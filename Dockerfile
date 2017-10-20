FROM frolvlad/alpine-oraclejdk8:slim
MAINTAINER Amin Mohammed-Coleman <amin.mohammed-coleman@arctech-solutions.io>
EXPOSE 8080
RUN mkdir -p /app/
ADD build/libs/task-management.jar /app/task-management.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/task-management.jar"]