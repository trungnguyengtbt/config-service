
FROM frolvlad/alpine-java:jre8.202.08-slim
MAINTAINER Trung Nguyen <trungnguyen.gtbt@gmail.com>

ENTRYPOINT ["/usr/bin/java","-Djava.security.egd=file:/dev/./urandom", "-jar", "/usr/share/myservice/config-service-0.0.1-SNAPSHOT.jar"]

# Add the service itself4
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/myservice/config-service-0.0.1-SNAPSHOT.jar

