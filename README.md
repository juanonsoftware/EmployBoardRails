# EmployBoardRails
Develop an applications to display employees with basic information using Rails framework

# Steps

## Generation of the application
Start a container that have Rails installed
```
docker compose -f employboard-docker-compose.yml run --service-ports --build web sh
```
To generate new application
```
rails new .
```
To start the server
```
rails s -b 0.0.0.0
```

From next run after Rails app generated, we can run below command to auto start Rails
```
docker compose -f employboard-docker-compose.yml run --service-ports --build web rails s -b 0.0.0.0
```

## Start a container and maps to /usr/src/app
docker run -it --rm -v .\EmloyBoard:/usr/src/app mydockercity/rubyonrails:latest-alpine /bin/sh