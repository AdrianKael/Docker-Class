docker image ls
sudo usermod -aG docker $USER
docker volume create pgdata
docker volume create Sonarqube
docker volume create Jenkins
docker volume create Sonatype
docker volume create Portainer
docker network create User-Defined
docker run -d -it -v pgdata:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpassword --network User-Defined --name PostgreSQL postgres:latest
docker run -d -it -v Sonarqube:/opt/sonarqube/conf -v Sonarqube:/opt/sonarqube/logs -v Sonarqube:/opt/sonarqube/extensions -v Sonarqube:/opt/sonarqube/data -e SONARQUBE_JDBC_USERNAME=sonar -e SONARQUBE_JDBC_PASSWORD=sonar --network User-Defined -p 9000:9000 --name Sonarqube sonarqube:lts
docker run -d -it -v Jenkins:/var/jenkins_home --network User-Defined --name Jenkins jenkins/jenkins:lts-jdk11
docker run -d -it -v Sonatype:/nexus-data_sonatype/nexus3 --network User-Defined --name Sonatype sonatype/nexus3
docker run -d -it --restart=always -v Portainer:/var/run/docker.sock --network User-Defined --name Portainer portainer/portainer-ce

