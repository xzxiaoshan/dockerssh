#FROM openjdk:8-jdk-slim
FROM docker.io/store/oracle/serverjre:8

#镜像的制作人
MAINTAINER 365384722@qq.com

RUN set -x && \
  yum -y install openssl openssh-server openssh-clients && \
  ssh-keygen -t rsa -P '' -f /etc/ssh/ssh_host_rsa_key && \
  ssh-keygen -t ecdsa -P '' -f /etc/ssh/ssh_host_ecdsa_key && \
  ssh-keygen -t ed25519 -P '' -f /etc/ssh/ssh_host_ed25519_key
