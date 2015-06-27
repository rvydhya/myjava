FROM java:7


COPY Hello.java .
RUN javac -d Hello.java
RUN apt-get update

ENTRYPOINT ["java", "Hello"]