FROM ubuntu:18.04

# Install prerequisites
RUN apt-get -y update && apt-get -y upgrade
RUN apt install -y openjdk-11-jdk
RUN mkdir /usr/local/tomcat
RUN sudo apt install tomcat9 tomcat9-admin -y

EXPOSE 8080
COPY  /var/lib/jenkins/workspace/DevOps/target/hello-world-war-1.0.0.war /var/lib/tomcat9/webapps
#WORKDIR /var/lib/tomcat9/webapps
#RUN curl -O -L https://github.com/bhaskarndas/sample-war/raw/main/sampletest.war
