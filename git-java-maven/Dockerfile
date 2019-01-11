FROM java:8 AS package
MAINTAINER haoguowei52@163.com

ENV VERSION 3.6.0

# 下载maven 并解压
RUN apt-get update -q \
    && apt-get install curl -y -q \
    && curl -sLo /apache-maven-${VERSION}-bin.tar.gz https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.0/binaries/apache-maven-${VERSION}-bin.tar.gz \
    && tar xf /apache-maven-${VERSION}-bin.tar.gz -C /  \
    && apt-get clean \
    && rm -rf /apache-maven-${VERSION}-bin.tar.gz

ENV PATH="$PATH":"/apache-maven-${VERSION}/bin"

RUN mkdir /deploy \
    && cd /deploy \
    && git clone https://github.com/haoguowei/docker-demo.git \
    && cd docker-demo \
    && mvn clean install -DskipTests


FROM java:8 AS run
EXPOSE 8080
COPY --from=package /deploy/docker-demo/target/docker-demo-0.0.1-SNAPSHOT.jar .
CMD ["java","-jar","docker-demo-0.0.1-SNAPSHOT.jar"]