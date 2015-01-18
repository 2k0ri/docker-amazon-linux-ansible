FROM sowawa/amazon-linux
MAINTAINER 2k0ri esc13245@gmail.com

RUN sed -i 's/$awsregion/ap-northeast-1/g' /etc/yum.repos.d/amzn-*
RUN yum install -y epel-release
RUN sed -i -e 's/^#baseurl/baseurl/g' -e 's/^mirrorlist/#mirrorlist/g' /etc/yum.repos.d/epel*
RUN yum install -y ansible --enablerepo=epel
