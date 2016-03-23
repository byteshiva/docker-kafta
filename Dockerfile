# Build:
# docker build -t learnshiva/kafta:latest .
#
# Create:
# docker create -it -p 6379:6379 --name container-kafta learnshiva/kafta
#
# Start:
# docker start container-kafta
#
# Connect with kafta client
# docker exec -it container-kafta kafta-cli
#
# Connect bash
# docker exec -it container-kafta bash

FROM        ubuntu:latest
MAINTAINER  Siva <learn.shiva@gmail.com>
RUN         apt-get update && apt-get install -y wget curl
RUN         curl -L -O http://mirror.fibergrid.in/apache/kafka/0.9.0.1/kafka_2.10-0.9.0.1.tgz
RUN         tar -xzf kafka_2.10-0.9.0.1.tgz && cd kafka_2.10-0.9.0.1
