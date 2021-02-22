## Teampass WebServer

1. Extract zip file named 2.1.27.16.zip on /var/www/html/teampass;
2. Install docker-compose available on link https://docs.docker.com/compose/install/;
3. Build Apache image on your docker environment using the command below:
```sh
docker build -t appteampass:latest .
```

3. Execute file docker-compose.yaml;
4. Access http://dockerip/teampass

Done.
