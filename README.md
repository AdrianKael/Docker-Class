# Docker-Class
# HomeWork2
# First Git clone this Repository
# Run the next commands on the copied Repository:
#     docker build -t myapp:0.1 .
# Once created the image by the Dockerfile instructions and the requirements.txt(check with command: docker images)
#     docker run --name myapp -p 9001:8001 myapp:0.1
# Once the image is running correctly enter you IP that should be something like this: **http://10.24.48.172:9001/**
# the Website should show text: **Hostname:dc330a3867c5 Date:02-08-2021 Time:04:02:33 Timezone:UTC +0000 IP:172.17.0.2**
# Stop the image with: 
#     docker stop myapp
# change the tag to publish the image, but with the name of your account of dockerhub
#     docker tag myapp:0.1 **adriankael**/myapp:Homework2Docker
