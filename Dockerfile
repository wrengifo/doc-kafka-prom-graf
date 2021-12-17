#FROM wurstmeister/kafka
FROM confluentinc/cp-kafka:latest



ADD prom-jmx-agent-config.yml /opt/prometheus/prom-jmx-agent-config.yml
ADD https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.15.0/jmx_prometheus_javaagent-0.15.0.jar /opt/prometheus/jmx_prometheus_javaagent.jar


USER root
RUN chown -R appuser:appuser /opt/prometheus/
RUN chmod +rx /opt/prometheus/

