FROM docker.elastic.co/logstash/logstash-oss:6.3.2
MAINTAINER hmcho <hmcho@quarry.kr>

LABEL Description="logstash with UUID plugin"

RUN /opt/logstash/bin/logstash-plugin install logstash-filter-uuid 

#CMD ["logstash", "-f /conf/logstash.conf"]

