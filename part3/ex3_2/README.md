# Exercise 1.15
Simple Flask web app running in a Docker container

Docker Hub: https://hub.docker.com/r/syrvil/exercises

### How to run the application

Pull the image:
```
[sudo] docker pull syrvil/hello-flask-docker
```
Run the image:
```
[sudo] docker run --rm -p 5000:5000 syrvil/hello-flask-docker
```
Browse to http://127.0.0.1:5000 or http://localhost:5000
