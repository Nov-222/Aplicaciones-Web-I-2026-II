FROM ubuntu:22.04

RUN apt-get update && apt-get install -y nano
RUN apt-get install -y python3 python3-pip
RUN pip3 install Flask

EXPOSE 5000

VOLUME ["/site"]

COPY . /site/

CMD ["python3", "/site/main.py"]