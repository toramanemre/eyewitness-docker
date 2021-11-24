FROM ubuntu:latest
#https://hub.docker.com/r/whiteoaksecurity/docker-eyewitness/~/dockerfile/
#https://github.com/ChrisTruncer/EyeWitness  --> https://github.com/FortyNorthSecurity/EyeWitness
#https://www.christophertruncer.com/eyewitness-2-0-release-and-user-guide/
ENV DEBIAN_FRONTEND="noninteractive" 
#TZ="America/New_York"
#ENV DEBIAN_FRONTEND="noninteractive" TZ="America/New_York"  ### gets past the interactive nature of tzdata and other packages

RUN apt-get update &&  apt-get install -y git && apt autoclean && apt autoremove && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/FortyNorthSecurity/EyeWitness

WORKDIR /EyeWitness/Python/setup
RUN ./setup.sh

RUN mkdir /tmp/EyeWitness
WORKDIR /tmp/EyeWitness/
ENTRYPOINT ["python3", "/EyeWitness/Python/EyeWitness.py", "--no-prompt"]
