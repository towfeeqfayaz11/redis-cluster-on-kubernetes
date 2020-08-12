Procedure to create the cluster:

git clone the repo
you should have kubernetes and kubectl installed
go inside the directory <redis_cluster_kubernetes>
kubectl apply -f redis-file.yaml

kubectl get all
kubectl get pods -o wide
kubectl exec -it <full podname> -- /bin/bash  ==to enter the pod

from inside the pod run below commands
      =>  redis-cli --cluster create <ip>:<port>  <ip>:<port> <ip>:<port> <ip>:<port> <ip>:<port>  
          <ip>:<port> --cluster-replicas 1
          
      =>  redis-cli -c -h <ip> -p <port>
          
      =>  cluster nodes
      =>  info

