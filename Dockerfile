FROM debian:sid-slim


RUN apt-get update && apt-get -y --no-install-recommends install openjdk-8-jre-headless openjdk-8-jdk-headless git ca-certificates ant supervisor wget && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/apache/incubator-retired-wave

WORKDIR /incubator-retired-wave

RUN cd /incubator-retired-wave/ && ./gradlew jar && rm -rf .git


RUN wget https://archive.apache.org/dist/lucene/solr/4.9.1/solr-4.9.1.tgz -O /tmp/solr.tgz \
	&& cd / && tar xf /tmp/solr.tgz && rm /tmp/solr.tgz

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# wave - conf #
RUN sed -i 's/search_type : memory/search_type : solr/g' wave/config/reference.conf
RUN sed -i 's/.*http_frontend_addresses.*/  http_frontend_addresses : ["0.0.0.0:9898"]/g' /incubator-retired-wave/wave/config/reference.conf

EXPOSE 9898

CMD ["/usr/bin/supervisord", "-n"]
