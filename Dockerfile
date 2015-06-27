FROM java:7


COPY Hello.java .
RUN javac Hello.java
RUN apt-get update

ENTRYPOINT ["java", "Hello"]