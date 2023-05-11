# Getting Started with test dockerized application

## Build docker image

```
cd <project_dir>
docker build -t mytest .
```

## Run dockerized app

```
docker run --name myapp -p 3001:3000 -d mytest
```

Parameters description:

-   `myapp` - container name
-   `3000` - is a container port
-   `3001` - port on which you would like to run your app
-   `-d` - detach (run in background)

Now you can open your app on `localhost` via port `3001` (http://localhost:3001)

## Inspect running containers

```
docker ps -a
```

## Stop and remove containers

```
docker container rm -f myapp
```

or

```
docker container stop myapp
docker container rm myapp
```

## Inspect running containers

```
docker images
```

## Remove docker image

```
docker image rm <image_name_or_id>
```

## Save docker image to file to distribute

```
docker save mytest | gzip > mytest.tar.gz
```

## Load image from external file

```
docker load < mytest.tar.gz
```

## Author

[fastiuk](https://github.com/fastiuk) - Yevhen Fastiuk
