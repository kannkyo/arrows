FROM centos:latest

RUN yum update -y \
  && yum install -y epel-release \
  && yum install -y git \
                    # for nexus test
                    node.js \
                    npm \
                    python-pip \
                    maven \
                    iproute \
                    # for docker to use nexus test
                    yum-utils \
                    device-mapper-persistent-data \
                    lvm2 \
                    # for samba test
                    samba-client \
                    samba-winbind \
                    cifs-utils \
  && yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo \
  && yum install -y docker-ce \
  && yum clean all \
  && rm -rf /var/cache/yum/* \
  && npm install -g bower \
  && pip install --upgrade pip

CMD ["/usr/sbin/init"]
