FROM java:7

COPY src /home/root/Hello/src
WORKDIR /home/root/Hello
RUN mkdir bin
RUN javac -d bin src/Hello.java
RUN apt-get update

ENTRYPOINT ["java", "-cp", "bin", "Hello"]