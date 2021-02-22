## Teampass WebServer

1. Clone this project on you Docker Environment;
2. Extract zip file named 2.1.27.16.zip  and rename directory extracted(TeamPass-2.1.27.16) to teampass;
3. Install docker-compose available on link https://docs.docker.com/compose/install/;
4. Access the directory of project downloaded to build Apache custom image on your docker environment and execute the command below:
```sh
docker build -t apptpass:latest .
```
5. After Apache custom image builded, execute stack using docker-compose.yaml file with this command:
```
docker-compose -f docker-compose.yaml up -d
```
6. After run docker-compose file, access the URL http://MyIP/teampass and set permissions on these directories:

```sh
chmod -R 0777 teampass/includes/config
chmod -R 0777 teampass/includes/avatars
chmod -R 0777 teampass/includes/libraries/csrfp/libs
chmod -R 0777 teampass/includes/libraries/csrfp/log
chmod -R 0777 teampass/includes/libraries/csrfp/js
chmod -R 0777 teampass/backups
chmod -R 0777 teampass/files
chmod -R 0777 teampass/install
chmod -R 0777 teampass/upload
```

Acessing the URL http://MyIP/teampass, you could see the Installations Steps of Teampass, proceed with installation and take care of your passwords since today :)


Done.
