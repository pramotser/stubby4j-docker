FROM openjdk:8-jdk-alpine
ENV STUBBY_VER 7.0.0
RUN apk update --no-cache && \
wget https://repo1.maven.org/maven2/io/github/azagniotov/stubby4j/${STUBBY_VER}/stubby4j-${STUBBY_VER}.jar -O /usr/local/stubby4j.jar
ENTRYPOINT ["java","-jar","/usr/local/stubby4j.jar","-l","0.0.0.0","-d","/usr/local/stubby.yaml"]
