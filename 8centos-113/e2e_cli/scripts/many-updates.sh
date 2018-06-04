ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/lychee.com/orderers/orderer2.lychee.com/msp/tlscacerts/tlsca.lychee.com-cert.pem
CHANNEL_NAME="mychannel"
for (( i = 0; i < 3; ++i ))
do
	peer chaincode invoke -o orderer2.lychee.com:7050  --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA -C $CHANNEL_NAME -n mycc -c '{"Args":["invoke","a","b","10"]}'& >&log.txt
done
