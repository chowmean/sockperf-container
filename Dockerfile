FROM ubuntu:16.04
EXPOSE 11111
LABEL maintainer="gaurav.dev.iiitm@gmail.com"

RUN apt-get update \
    && apt-get install telnet traceroute dnsutils curl wget -y

COPY sockperf sockperf
RUN mv sockperf /usr/local/bin/
RUN chmod a+x /usr/local/bin/sockperf
COPY run.sh run.sh
CMD ["/bin/bash","-c","bash run.sh"]
