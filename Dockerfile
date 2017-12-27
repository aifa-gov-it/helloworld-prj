FROM maven:3.5.2-jdk-8-alpine

LABEL maintainer "lellomelchionda@gmail.com"

ENV WORKDIR /usr/app
RUN mkdir $WORKDIR
WORKDIR $WORKDIR

COPY pom.xml .
COPY src/ src/

VOLUME /root/.m2

RUN mvn clean install \
  && mv target/helloworld-prj-0.0.1-SNAPSHOT-exec.jar ./helloworld-prj-exec.jar \
  && rm -rf target/ \
  && rm -rf pom.xml \
  && rm -rf src/

ENTRYPOINT ["java", "-jar", "helloworld-prj-exec.jar"]
CMD ["--XMX1024"]