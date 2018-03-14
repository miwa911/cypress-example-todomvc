FROM cypress/base:8
WORKDIR /workdir/path
RUN echo "PWD is: $PWD"
VOLUME /home/docker/jenkins/jenkins_home/workspace/cypress_test_master-E5IGP2XAQ7F7XEQZQKP7KIXCKR56U3L2THTFLSVV6D5IJGXWZHNA:/workdir/path
RUN npm install
RUN npm run test:ci