FROM ubuntu:latest

WORKDIR /usr/src/

COPY . ./fprime

ENV INSTALL_SCRIPT=/usr/src/fprime/Scripts/install_dependencies.sh
ENV FPRIME_SCRIPT=/usr/src/fprime/Scripts/setup_fpp.sh

RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Run Setup Script
RUN chmod +x $INSTALL_SCRIPT
RUN $INSTALL_SCRIPT

# Run Fprime Setup
WORKDIR /usr/src/fprime/
RUN chmod +x ${FPRIME_SCRIPT}
RUN ${FPRIME_SCRIPT}


