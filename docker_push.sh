echo "name space is ${myNs}, SHA is  ${SHA}"
docker build -t ${myNs}/multi-client:latest -t ${myNs}/multi-client:${SHA} ./client
docker build -t ${myNs}/multi-server:latest -t ${myNs}/multi-server:${SHA} ./server
docker build -t ${myNs}/multi-worker:latest -t ${myNs}/multi-worker:${SHA} ./worker
 
# update latest version
docker push ${myNs}/multi-client:latest
docker push ${myNs}/multi-server:latest
docker push ${myNs}/multi-worker:latest

docker push ${myNs}/multi-client:${SHA}
docker push ${myNs}/multi-server:${SHA}
docker push ${myNs}/multi-worker:${SHA}
