# Angular Docker Application

## build

```bash

docker build -t angular-app:latest .
docker save angular-app:latest -o angular-app.tar
minikube image load angular-app.tar

```



## run in docker container

```bash

docker run -p 80:80 angular-app:latest

```


## deploy to minikube

```bash

 kubectl apply -f angular-deployment.yaml

```

## check if pod works

```bash

kubectl get pods

```

## run application

```bash

minikube service angular-app-service

```
