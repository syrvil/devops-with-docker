### Backend scratch imagella multi-staged rakennuksen jälkeen
``` 
REPOSITORY                                   TAG           IMAGE ID       CREATED          SIZE
backend-multi-stage                          scratch       f432d93b99c3   14 minutes ago   18MB
backend_joined_runs                          alpine        0401cea62d9d   4 hours ago      447MB
backend_joined_runs                          latest        07f07ef7a304   4 hours ago      1.07GB
backend_noroot                               latest        98272b41d89b   20 hours ago     1.07GB

``` 

Ratkaisu löytyi täältä: https://stackoverflow.com/questions/60400478/golang-based-docker-image-build-works-but-not-scratch-based-image

Lisäksi binääri piti . sijaan kopioida /app/server polkuun.
