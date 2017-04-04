
screen -dmS dcrd dcrd -C /vagrant/dcrd.conf


INSIGHT_NETWORK=dcrdtestnet \
  INSIGHT_SAFE_CONFIRMATIONS=2 \
  INSIGHT_FORCE_RPC_SYNC=1  \
  BITCOIND_HOST=127.0.0.1 \
  BITCOIND_USER=rpcuser \
  BITCOIND_PASS=rpcpass \
  BITCOIND_PORT=19109 \
  BITCOIND_DATADIR=~/.insight/data \
  BITCOIND_P2P_PORT=19108 \
  node ./insight.js 


cd bitcore-wallet-service; ./start.sh