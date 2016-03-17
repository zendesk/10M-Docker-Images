FROM rounds/python-alpine
MAINTAINER Ory Band @ Rounds <ory@rounds.com>

ENV SSHUTTLE_VERSION 0.77.2

RUN apk add -qu --no-cache iptables openssh
RUN pip install -q --no-cache-dir sshuttle==$SSHUTTLE_VERSION

ENV LOCAL_IP ""
ENV SUBNET_MASK 0
ENV REMOTE_IP ""
ENV REMOTE_USER ""

CMD sshuttle -r $REMOTE_USER@$REMOTE_IP $LOCAL_IP/$SUBNET_MASK
