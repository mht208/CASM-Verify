FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -yq --no-install-recommends apt-utils 
RUN apt-get install -yq git python3 python3-pip python3-z3 nano

WORKDIR /home

RUN git clone https://github.com/mht208/CASM-Verify.git CASM_Verify

WORKDIR /home/CASM_Verify
