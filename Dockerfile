FROM alpine:3.6

ENV AWSCLI_VERSION "1.16.8"
ENV AWSEBCLI_VERSION "3.14.4"

RUN apk --no-cache add \ 
      bash \
      curl \
      git \
      openssh-client \
      less \
      groff \
      jq \
      python \
      py-pip 

RUN pip install --upgrade --no-cache-dir \
    pip \
    awscli==$AWSCLI_VERSION \
    awsebcli==$AWSEBCLI_VERSION

VOLUME /root/.aws
VOLUME /project

WORKDIR /project
