FROM ubuntu:20.04
RUN mkdir /apps

COPY ./jdk-17_linux-x64_bin.tar.gz /apps
RUN tar xzvf /apps/jdk-17_linux-x64_bin.tar.gz -C /apps
ENV JAVA_HOME=/apps/jdk-17.0.1
ENV PATH=/apps/jdk-17.0.1/bin:$PATH
RUN /apps/jdk-17.0.1/bin/java -version
