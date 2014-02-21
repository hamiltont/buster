FROM ubuntu

RUN apt-get update
RUN apt-get install -y python-pip wget git build-essential python-dev

# GitPython needs this environment variable when run
# inside a container
ENV USER hamiltont

ADD . /buster
RUN cd /buster && python setup.py install

ENTRYPOINT ["buster"]
