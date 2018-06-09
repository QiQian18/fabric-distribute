# fabric-distribute
3orderer+3kafka+2org+8peer+1channel

正确的脚本启动命令在centos-113中。可以将其复制到其他机器上。
网络启动之后:
docker exec -it lycheecli bash 
chmod +x ./scripts/*.sh
./scripts/script.sh mychannel newcc 1.0   //一定要包含channel名字，chaincode名字和版本号
其他的脚本 
    ./query.sh mychannel newcc 1.0 
    ./update.sh mychannel newcc 1.0 
