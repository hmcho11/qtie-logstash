FROM logstash:7.10.1
MAINTAINER hmcho <hmcho@quarry.kr>

LABEL Description="logstash with UUID plugin"

RUN /opt/logstash/bin/logstash-plugin install logstash-filter-uuid 

#CMD ["logstash", "-f /conf/logstash.conf"]

