FROM alpine:3.6

ENV AWSCLI_VERSION "1.16.8"
ENV AWSEBCLI_VERSION "3.14.4"
ENV S3CMD_VERSION "2.0.2"

RUN apk -v --no-cache add \ 
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
    awscli==$AWSCLI_VERSION \
    awsebcli==$AWSEBCLI_VERSION \
    s3cmd==$S3CMD_VERSION

VOLUME /root/.aws
VOLUME /project

WORKDIR /project
