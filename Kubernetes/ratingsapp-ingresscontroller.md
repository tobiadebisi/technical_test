helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx 
helm repo update

helm install nginx-ingress ingress-nginx/ingress-nginx \
    --namespace rating-ns \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux