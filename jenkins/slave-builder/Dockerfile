FROM jpetazzo/dind
MAINTAINER Etki etki@etki.name

ADD provision /tmp/provision

RUN chmod a+x /tmp/provision/build.sh

ENTRYPOINT /tmp/provision/build.sh
