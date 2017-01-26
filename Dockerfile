# Base image
FROM openjdk:8

ENV SCALA_VERSION 2.11.6
ENV SBT_VERSION 0.13.12

# Download and install sbt
RUN curl -L -O https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  apt-get install -f -y && \
  sbt sbt-version

# Define working directory
WORKDIR /root
