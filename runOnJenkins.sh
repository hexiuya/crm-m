docker stop crm-m
docker rm crm-m
docker image rm crm-m:0.0.1
docker build . -t crm-m:0.0.1
docker run -d -p 7112:7112 --name crm-m --network crm-network --network-alias alias-crm-m --link crm-test-mysql crm-m:0.0.1
