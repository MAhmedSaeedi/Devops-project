FROM ubuntu:16.04

# Install prerequisites
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-11-jdk wget
RUN apt-get -y install curl
RUN mkdir /usr/local/tomcat
RUN sudo apt install tomcat9 tomcat9-admin -y

EXPOSE 8080
COPY  /var/lib/jenkins/workspace/DevOps/target/hello-world-war-1.0.0.war /var/lib/tomcat9/webapps
#WORKDIR /var/lib/tomcat9/webapps
#RUN curl -O -L https://github.com/bhaskarndas/sample-war/raw/main/sampletest.war
