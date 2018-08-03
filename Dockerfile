ARG jdk_version=8
FROM openjdk:$jdk_version

ARG embulk_version=0.9.7

RUN mkdir -p /opt/embulk
RUN curl -L "https://dl.bintray.com/embulk/maven/embulk-${embulk_version}.jar" -o /opt/embulk/embulk.jar
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

CMD ["--help"]
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
