echo "Deploying to k8s"
kubectl apply -f k8s

kubectl set image deployments/server-deployment server=noneedrelax/multi-server:${SHA}
kubectl set image deployments/client-deployment client=noneedrelax/multi-client:${SHA}
kubectl set image deployments/worker-deployment worker=noneedrelax/multi-worker:${SHA}
 
