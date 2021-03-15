FROM docker.elastic.co/logstash/logstash-oss:6.3.2
MAINTAINER hmcho <hmcho@quarry.kr>

LABEL Description="logstash 6.3.2  with UUID, Prune plugins"

RUN /opt/logstash/bin/logstash-plugin install logstash-filter-uuid

RUN /opt/logstash/bin/logstash-plugin install logstash-filter-prune

#CMD ["logstash", "-f /conf/logstash.conf"]

