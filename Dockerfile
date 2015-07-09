FROM mhasa004/centos-cuda7.0-torch7
MAINTAINER Mahmudul Hasan <mhasa004@ucr.edu>

# install torch7
RUN yum update && yum -y install curl
RUN curl -sk https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
RUN git clone https://github.com/torch/distro.git /root/torch --recursive
RUN cd /root/torch && yes | ./install.sh
