#replace environment variables
source .env && envsubst < inspect-server.yaml > inspect-server-cmplt.yaml
source .env && envsubst < inspect-app.yaml > inspect-app-cmplt.yaml
#delploy
kubectl apply -f inspect-server-cmplt.yaml
kubectl apply -f inspect-app-cmplt.yaml