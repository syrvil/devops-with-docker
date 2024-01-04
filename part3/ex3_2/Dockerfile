FROM ubuntu:22.04

RUN apt-get update && apt-get install -y python3 python3-pip

WORKDIR /usr/src/app
COPY . .

RUN pip install flask

# host 0.0.0.0 is needed to access the container from outside
CMD ["flask", "run", "--host", "0.0.0.0"]