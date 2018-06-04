ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/lychee.com/orderers/orderer2.lychee.com/msp/tlscacerts/tlsca.lychee.com-cert.pem
CHANNEL_NAME="mychannel"
#peer chaincode query -o orderer2.lychee.com:7050  --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA -C $CHANNEL_NAME -n mycc2 -v 2.0 -c '{"Args":["query","'$1'"]}'
peer chaincode invoke -o orderer2.lychee.com:7050  --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA  -C $CHANNEL_NAME -n mycc2 -v 2.0 -c '{"Args":["get","'$1'"]}'