sudo apt install unzip &&
wget -O MEWV3.zip https://github.com/kvhnuke/etherwallet/archive/v3.11.3.2.zip?raw=true &&
unzip MEWV3.zip -d . &&
sudo apt-get update &&
sudo apt-get install software-properties-common -y &&
sudo add-apt-repository -y ppa:ethereum/ethereum &&
sudo apt-get update &&
sudo apt-get install -y ethereum &&
git clone git://github.com/ScenicSwisscoast/SustainabiltyChain &&
sudo geth --port 30304 --rpc --rpcaddr 127.0.0.1 --rpcport 8101 --rpccorsdomain http://127.0.0.1:8000 --datadir myDataDir --networkid 19720502 init ./SustainabiltyChain/files/myGenesis72.json console 2>> myEth2.log &&
sudo geth --port 30304 --rpc --rpcaddr "0.0.0.0" --rpcport 8101 --rpccorsdomain "*" --rpcapi="eth,net,web3,utils" --datadir myDataDir --networkid 19720502 --bootnodes="enode://cf2a1e3bb2cfe5a8aed058b609d6f4c844238e44425a7b24e422ce61cd971257859db2a8c4584acfe9bd65ffbec78d7db5cba14cbf32953f8f5c94e08135b20c@46.231.206.125:30304" "enode://4cb5b303e317c98ca791c2e062060e0f690ba24bfdc30564e345326f65f08cd00d0bfe8616f970181109e7825ca34b1456fc467f2c53b4291ad5f3c02bbea00e@46.231.206.127:30304" "enode://0fe08c0fd6643f54bfcb6987e9fa2201bf22bbabe846b565a222e85d1c93826ece52b77f30860b73838e32ac9e79946df521 b2228ffe10eb38748eda1451880c@52.59.201.140:30304" console 2>> myEth2.log &&
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - &&
sudo apt-get install -y nodejs &&
npm install fibers &&
sudo apt-get install -y build-essential &&
npm install express vhost body-parser node-json-rpc bignumber.js wait.for &&
cd etherwallet-3.11.3.2/json_relay_node/ &&

sudo apt-get install xdg-utils &&
xdg-open etherwallet-3.11.3.2/dist/index.html

sudo node runLocalServer.js &&
