FROM rounds/python-alpine
MAINTAINER Ory Band @ Rounds <ory@rounds.com>

ENV SSHUTTLE_TAG sshuttle-0.54

RUN apk add -qU --no-cache iptables openssh
RUN apk add -qU --no-cache -t .build-deps git \
    && git clone -qb $SSHUTTLE_TAG https://github.com/sshuttle/sshuttle.git /opt/sshuttle \
    && apk del -q .build-deps

WORKDIR /opt/sshuttle

ENV LOCAL_IP ""
ENV SUBNET_MASK 0
ENV REMOTE_IP ""
ENV REMOTE_USER ""

CMD ./sshuttle -r $REMOTE_USER@$REMOTE_IP $LOCAL_IP/$SUBNET_MASK
