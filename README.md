## Teampass Passwords Manager on Docker

1. Clone this project on you Docker Environment;

2. Extract .zip file named 2.1.27.16.zip  and move files of this directory extracted(TeamPass-2.1.27.16) to teampass directory:
```sh
mv TeamPass-2.1.27.16/* teampass/
```

3. Install docker-compose available on this link https://docs.docker.com/compose/install/;

4. Access the directory of project downloaded to build Apache custom image on your docker environment and execute the command below:
```sh
docker build -t apptpass:latest .
```

**OBS**: Don't forget to update file docker-compose.yaml adjusting the password of MYSQL_ROOT_PASSWORD parameter and check wich if the IP of database container on extra_hosts parameter is correct after run docker-compose command. In this case the I had no another containers on this virtual machine.

5. After Apache custom image builded, execute stack using docker-compose.yaml file with this command:
```
docker-compose -f docker-compose.yaml up -d
```

6. After execute the docker-compose file, access the URL http://MyIP/teampass and set permissions on these directories on directory called **teampass**:

```sh
chmod -R 0777 teampass/includes/config &&
chmod -R 0777 teampass/includes/avatars &&
chmod -R 0777 teampass/includes/libraries/csrfp/libs &&
chmod -R 0777 teampass/includes/libraries/csrfp/log &&
chmod -R 0777 teampass/includes/libraries/csrfp/js &&
chmod -R 0777 teampass/backups &&
chmod -R 0777 teampass/files &&
chmod -R 0777 teampass/install &&
chmod -R 0777 teampass/includes &&
chmod -R 0777 teampass/upload
```

7. Acessing the URL http://MyIP/teampass, you could see the Installations Steps of Teampass, proceed with installation;

8. Access mariadb container to create database and user to edit ```Database conection``` on Installation steps:

```sh
# Accessing database container
docker exec -it mariadb mysql
```

```sh
# Creating Database
create database teampass;
```

```sh
# Create user and set permissions
grant all privileges on teampass.* to 'usrteam'@'%' identified by 'yourpassword';
```

9. After installed, follow instructions as remove install directory, disable maintenance mode, create roles, directories and users to access your teampass.

Take care of your passwords since today :)

