FROM ubuntu:14.04
MAINTAINER pdt <pdthanh06@gmail.com>

# make sure the package repository is up to date
RUN apt-get update

RUN apt-get install -y software-properties-common

RUN apt-get install -y build-essential

# core dev stuff

RUN apt-get install -y  tar git curl nano wget dialog net-tools
RUN apt-get install -y libpq-dev libjpeg-dev

# setup tools
RUN apt-get install -y python python-dev python-distribute python-pip 

# virtualenv stuff
RUN pip install virtualenv

####### WEB STUFF ##########
# supervisor & nginx
run apt-get install -y nginx supervisor

# gunicorn
RUN pip install gunicorn

# install uwsgi
# RUN pip install uwsgi

# install nginx
RUN apt-get install -y python-software-properties
RUN apt-get update
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx

####### END EB STUFF ##########
