# swimlane practical 
1. Dockerize https://github.com/swimlane/devops-practical
##
Answer: 
have attcahed Dockerfile with image instructions.
need to download that dockerfile to local system where docker deamon already running,
lets say we have downloaded file into local system dir (/Users/swimlane/)
then need to run below commands, 
```
docker build /Users/swimlane/Dockerfile  
```
once docker image is build we need to check like is it available in local system , 
command to check images 
```
docker images
```
if we want to tag that image with some name ex:-swimlane , we need to capture imageID , then 
```
docker tag ImageID swimlane:some_version
```
once tagging is done we need to run that image
```
docker run swimlane:some_version

