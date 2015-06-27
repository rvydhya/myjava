FROM java:7


RUN mkdir bin
RUN javac -d bin src/Hello.java
RUN apt-get update

ENTRYPOINT ["java", "-cp", "bin", "Hello"]