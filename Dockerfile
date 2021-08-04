FROM nginx

RUN yum update -y 

RUN yum provides '*/applydeltarpm' && yum install deltarpm -y \
    yum install curl apt-transport-https -y

RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo

RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash -

RUN yum install yarn git -y
