FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install curl jshon man
ADD bin/ /usr/local/bin/
ADD jsonrpc2.1 /usr/local/share/man/man1/
ENTRYPOINT ["jsonrpc2"]
