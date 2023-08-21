# Deployment Reddit-clone using Kubernetes-ingress on AWS 
This project demonstrates how to deploy a Reddit clone app on Kubernetes with Ingress and expose it to the world using Minikube as the cluster.

## Prerequisites
Before you begin, you should have the following tools installed on your local machine: 
- Docker
- Minikube cluster ( Running )
- kubectl
- Git
  
## Installation
1) Build the Docker image for the Reddit clone app: `docker build -t reddit-clone-app .`
2) Deploy the app to Kubernetes: `kubectl apply -f deployment.yaml`
3) Deploy the Service for deployment to Kubernetes: `kubectl apply -f service.yaml`
4) Enable Ingress by using Command: `minikube addons enable ingress`
5) Expose the app as a Kubernetes service: `kubectl expose deployment reddit-deployment --type=NodePort --port=5000`
6) Create an Ingress resource: `kubectl apply -f ingress.yaml`


## Test Ingress DNS for the app:
- Test Ingress by typing this command: `curl http://domain.com/test`







