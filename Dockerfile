FROM nginx

RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo

RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash -

RUN npm install -g yarn
