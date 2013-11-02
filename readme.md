docker & ruby & sinatra
=======================

A small hello-world http server written in Ruby using Sinatra web framework.
The Dockerfile is used to build the container image. Based on [this blog post](http://dyli.sh/2013/08/23/OSX-Vagrant-Docker-Sinatra.html).

Instructions the hard way
------------

    #1. install docker http://docs.docker.io/en/latest/installation
    #2. clone this repository
    #3. create a docker container
    $ sudo docker build -t luisbebop/sinatra-hello-world .
    #4. run the docker container you have created
    $ sudo docker run -d -p 5000:5000 luisbebop/sinatra-hello-world

Instructions the easy way
------------

    #1. run the docker container already uploaded to http://index.docker.io
	$ sudo docker run -d -p 5000:5000 luisbebop/sinatra-hello-world