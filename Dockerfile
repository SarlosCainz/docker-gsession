FROM tomcat:8.5-jre11
MAINTAINER m-takuj@sarlos.jp

ENV VERSION=4.9.3

WORKDIR /tmp
RUN set -ex \
 && curl -LsO http://dl1.gs.sjts.co.jp/v4/download/files/${VERSION}/gsession.zip \
 && unzip -q gsession.zip -d /usr/local/tomcat/webapps/gsession/ \
 && rm gsession.zip

WORKDIR /usr/local/tomcat/webapps
RUN rm -r docs examples host-manager manager

COPY index.html ROOT/

EXPOSE 8080
VOLUME /usr/local/tomcat/webapps/gsession/WEB-INF/backup
VOLUME /usr/local/tomcat/webapps/gsession/WEB-INF/filekanri
