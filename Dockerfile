FROM docker.elastic.co/logstash/logstash-oss:7.10.2
MAINTAINER hmcho <hmcho@quarry.kr>

LABEL Description="logstash 7.10.2  with UUID, Prune, json_encode plugins"

RUN /opt/logstash/bin/logstash-plugin install logstash-filter-uuid

RUN /opt/logstash/bin/logstash-plugin install logstash-filter-prune

RUN /opt/logstash/bin/logstash-plugin install logstash-filter-json_encode

#CMD ["logstash", "-f /conf/logstash.conf"]
