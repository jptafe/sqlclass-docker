# sqlclass-docker
A docker-compose script to stand up a set of relational databases and a frontend for students to conduct SELECT queries as a part of their learning

### Technology
This uses docker-compose with two microservices: 1) Mariadb 10.x and 2) PHPMyAdmin 5.x

### How to use this package in localhost
Install a Docker orchestration program like Docker Desktop (Windows & Mac)
```
git clone https://github.com/jptafe/sqlclass-docker
cd sqlclass-docker
docker-compse up
```
Then open your browser and open http://localhost:8080

### In the cloud
Use the above commands above in: 
[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/jptafe/sqlclass-docker/master/docker-compose.yml)
