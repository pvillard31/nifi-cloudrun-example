FROM apache/nifi-minifi:latest
USER root

ENV MINIFI_HOME /opt/minifi/minifi-0.5.0

ADD config.yml $MINIFI_HOME/conf/config.yml
ADD *.nar $MINIFI_HOME/lib/

RUN chown -R minifi:minifi $MINIFI_HOME

USER minifi
