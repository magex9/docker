FROM magex9/jdk7-oracle
MAINTAINER Scott Finlay <scott@magex.ca>

RUN apt-get update && \
    apt-get install -yq --no-install-recommends wget pwgen ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV TOMCAT_MAJOR_VERSION 8
ENV TOMCAT_VERSION 8.0.11
ENV CATALINA_HOME ${WORKDIR}/tomcat

# INSTALL TOMCAT
RUN wget -q https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    wget -qO- https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz.md5 | md5sum -c - && \
    tar zxf apache-tomcat-*.tar.gz && \
    rm apache-tomcat-*.tar.gz && \
    mv apache-tomcat* tomcat && \
	rm -rf tomcat/webapps/*

ADD create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
ADD start_tomcat.sh /start_tomcat.sh
RUN chmod +x /*.sh

EXPOSE 8080
# CMD ["/start_tomcat.sh"]
