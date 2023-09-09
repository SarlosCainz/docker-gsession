FROM tomcat:9.0.56-jre11-temurin
MAINTAINER m-takuj@sarlos.jp

ENV VERSION=5.1.3

RUN set -ex \
 && apt-get update \
 && apt-get install -y unzip \
 && apt-get clean

WORKDIR /usr/local/tomcat/webapps
RUN set -ex \
 && curl -LO https://www.sjts.co.jp/download/gs/${VERSION}/gsession.zip \
 && unzip -q gsession.zip -d ./gsession/ \
 && rm gsession.zip

VOLUME /usr/local/tomcat/webapps/gsession/WEB-INF/backup
VOLUME /usr/local/tomcat/webapps/gsession/WEB-INF/filekanri
