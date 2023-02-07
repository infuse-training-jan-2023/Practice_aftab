building images 
docker build -t p1 .
docker build -t p2 .
docker build -t p3 .
docker build -t p4 .
docker build -t p5 .
docker-compose build

commands for running containers
docker run -i p1
docker run -i p2
docker run p3 
docker run p4
docker run -p 3000:8080 p5
docker-compose up
