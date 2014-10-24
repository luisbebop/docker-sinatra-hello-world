FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y ruby-full rubygems-integration git
RUN git clone https://github.com/luisbebop/docker-sinatra-hello-world.git /opt/sinatra/
RUN gem install bundler
EXPOSE 5000
RUN cd /opt/sinatra && git pull && bundle install
CMD ["/usr/local/bin/foreman","start","-d","/opt/sinatra"]
