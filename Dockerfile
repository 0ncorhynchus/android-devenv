FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update -y
RUN apt-get install -y oracle-java8-installer oracle-java8-set-default

RUN apt-get install -y unzip
WORKDIR /opt
RUN wget https://dl.google.com/dl/android/studio/ide-zips/2.1.2.0/android-studio-ide-143.2915827-linux.zip
RUN unzip android-studio-ide-143.2915827-linux.zip

RUN apt-get install -y libxext6 libxrender1 libxtst6 libxi6 lib32stdc++6

RUN useradd -m developer -s /bin/bash
USER developer
WORKDIR /home/developer
