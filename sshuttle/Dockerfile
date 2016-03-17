FROM rounds/python-alpine
MAINTAINER Ory Band @ Rounds <ory@rounds.com>

RUN apk add -qu --no-cache iptables openssh
RUN pip install -q --no-cache-dir sshuttle

ENV LOCAL_IP ""
ENV SUBNET_MASK 0
ENV REMOTE_IP ""
ENV REMOTE_USER ""

CMD sshuttle -r $REMOTE_USER@$REMOTE_IP $LOCAL_IP/$SUBNET_MASK
