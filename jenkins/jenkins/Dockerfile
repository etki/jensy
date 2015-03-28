FROM jenkins:latest

COPY provision/plugins.txt /tmp/plugins.txt

RUN /usr/local/bin/plugins.sh /tmp/plugins.txt

RUN ls -ls $JENKINS_HOME

RUN mkdir $JENKINS_HOME/plugins