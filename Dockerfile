FROM amazonlinux

RUN yum install -y awscli
RUN aws --version
ENV AWS_DEFAULT_REGION=ap-northeast-1

RUN yum install -y httpd
EXPOSE 80

