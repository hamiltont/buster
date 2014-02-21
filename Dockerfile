FROM ubuntu

RUN apt-get update
RUN apt-get install -y python-pip wget git build-essential python-dev

# GitPython needs this environment variable when run
# inside a container
ENV USER root

ADD . /buster
RUN cd /buster && python setup.py install

# Remove about 80MB of extra stuff ;-)
RUN apt-get remove -y build-essential python-dev
RUN apt-get autoremove -y

