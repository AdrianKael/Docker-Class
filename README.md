# Docker-Class
**HomeWork2**<br/>
First Git clone this Repository:<br/>
    git clone https://github.com/AdrianKael/Docker-Class.git<br/>
Run the next commands on the copied Repository:<br/>
    docker build -t myapp:0.1 .<br/>
Once created the image by the Dockerfile instructions and the requirements.txt(check with command: docker images)<br/>
    docker run --name myapp -p 9001:8001 myapp:0.1<br/>
Once the image is running correctly enter you IP that should be something like this: **http://10.24.48.172:9001/**<br/>
the Website should show text: **Hostname:dc330a3867c5 Date:02-08-2021 Time:04:02:33 Timezone:UTC +0000 IP:172.17.0.2**<br/>
Stop the image with: <br/>
    docker stop myapp<br/>
change the tag to publish the image, but with the name of your account of dockerhub<br/>
    docker tag myapp:0.1 **adriankael**/myapp:Homework2Docker<br/>
