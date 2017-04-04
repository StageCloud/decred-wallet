
FROM       ubuntu:16.10

EXPOSE 3004


RUN apt-get update && apt-get install -y build-essential curl git

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

RUN /root/.nvm/nvm.sh && nvm install v0.10.40 && nvm use v0.10.40

# compile dcrd
RUN git clone  git@github.com:decred/insight.git && cd insight && npm install

CMD ["cd insight", "BITCOIND_HOST=dcrd BITCOIND_USER=rpcuser BITCOIND_PASS=rpcpass INSIGHT_NETWORK=dcrdtestnet LOGGER_LEVEL=debug npm start"]

