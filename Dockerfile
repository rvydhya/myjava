FROM java:7


 
RUN javac -d Hello.java
RUN apt-get update

ENTRYPOINT ["java", "-cp", "bin", "Hello"]