# swimlane practical 
#1. Dockerize https://github.com/swimlane/devops-practical
##
I have attcahed Dockerfile with image instructions.
need to download that dockerfile to local system where docker deamon already running,
lets say we have downloaded file into local system dir (/Users/swimlane/)
then need to run below commands, 
```
docker build /Users/swimlane/Dockerfile  
```
once docker image is build we need to check like is it available in local system , 
command to check images 
`
``
docker images
```

if we want to tag that image with some name ex:-swimlane , we need to capture imageID , then 

```
docker tag ImageID swimlane:some_version 
```
once tagging is done we need to run that image

```
docker run swimlane:some_version -p 3000:3000
```

#2. MongoDB should also be deployed as a docker container
##
if we want run MangoDB as a container along with above app then we can go with docker-compose/docker-swarm/kubernetes (since multi images setup has to done) 
attaching docker-compose file for this setup 
need to download that compose file to local system where docker-compose deamon already running, 
lets say we have downloaded file into local system dir (/Users/swimlane/)
then need to run below commands, 

need to switch to /Users/swimlane/ dir

```
cd /Users/swimlane/
```

then need to run below command to run conatiners

```
docker-compose up -d 
```

#3. Create a Kubernetes cluster to deploy the application 

  i . we need to create VPCs, subnets,routing tables 
  ii. spin up 3 Ec2 instances (one for Controller two for workers) 
  iii. we need to all should connect from each one end 
  iv. need to Install kubeadm, kubelet and kubectl in all 3 nodes 
  v.  initiate kubeadm init to initialize clusster 


#4 . Deploy the application to the Kubernetes cluster

attaching deployment.yaml and service.yaml  files for ref 
deployment.yaml - having instructions of deployment state , metadata,selectors 
service.yaml - having k8s network services, endpoints 

we need to apply yamls using kubectl to deploy application

```
kubectl create -f deployment.yaml
kubectl create -f service.yaml
```
to check running pods

```
kubectl get pods | grep running 
```
#5. Use terraform to create as much of the Kubernetes cluster and required infrastructure as possible

   create one directory like workspace for terraform project 
   create files like. 
   
   versions.tf - will be having resources versions 
   main.tf - having instructions to resource setup 
   vpc.tf - VPC ranges subnets have been added 
   eks-cluster.tf - kubernetes cluster resource details added 
   variable.tf - if we have are variables like region, type we can use 
   output.tf - having details like once infra is created from main.tf it will show us like what reourses we have created in human readable format 
   to standaridize structure have added multiple files to create setup , it's like we easy to troubleshoot files by seeing errors 
  
 
