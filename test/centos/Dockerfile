FROM centos:latest

RUN yum install -y epel-release \
  && yum install -y \
      git \
      node.js \
      npm \
      python-pip \
      maven \
      yum-utils \
      device-mapper-persistent-data \
      lvm2 \
      iproute \
  && yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo \
  && yum install -y docker-ce \
  && rm -rf /var/cache/yum/* \
  && yum clean all \
  && npm install -g bower \
  && pip install --upgrade pip

CMD ["/usr/sbin/init"]
