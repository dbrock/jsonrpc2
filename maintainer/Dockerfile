FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install --no-install-recommends \
  build-essential groff ruby-dev && gem install ronn
