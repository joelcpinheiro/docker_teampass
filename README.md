## Teampass WebServer

1. Clone this project on you Docker Environment;
2. Extract zip file named 2.1.27.16.zip on /var/www/html/teampass;
3. Install docker-compose available on link https://docs.docker.com/compose/install/;
4. Access the directory of project downloaded to build Apache custom image on your docker environment and execute the command below:
```sh
docker build -t apptpass:latest .
```
5. After Apache custom image builded, execute stack using docker-compose.yaml file;

6. Access http://dockerip/teampass

Done.
