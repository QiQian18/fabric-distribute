#!/bin/bash
ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/lychee.com/orderers/orderer2.lychee.com/msp/tlscacerts/tlsca.lychee.com-cert.pem
CHANNEL_NAME="mychannel"
start=$(date +%s)
for (( i = 0; i < 1000; ++i ))
do
	peer chaincode invoke -o orderer2.lychee.com:7050  --tls $CORE_PEER_TLS_ENABLED --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/lychee.com/orderers/orderer2.lychee.com/msp/tlscacerts/tlsca.lychee.com-cert.pem  -C mychannel -n mycc2 -c '{"Args":["update","a","100","+"]}'&
done
end=$(date +%s)  
time=$(( $end - $start ))  
echo "time is $time "

