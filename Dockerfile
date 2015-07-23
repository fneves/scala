FROM maven:3.3.3-jdk-8
RUN apt-get install -y wget
RUN wget http://www.scala-lang.org/files/archive/scala-2.11.7.deb && dpkg -i scala-2.11.7.deb && apt-get update && apt-get install scala
RUN echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-get update && apt-get install -y --force-yes sbt
