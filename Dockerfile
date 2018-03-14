FROM cypress/base:8
WORKDIR /workdir/path
VOLUME $PWD:/workdir/path
RUN npm install
RUN npm run test:ci