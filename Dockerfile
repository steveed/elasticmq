FROM java:8
MAINTAINER Stephen Durham <sdurham@runtitle.com>

EXPOSE 9324

RUN mkdir /elasticmq
RUN curl -s -o /elasticmq/elasticmq-server-0.8.0.jar https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-0.8.0.jar

ADD . /elasticmq
WORKDIR /elasticmq
RUN chmod a+x run.sh

CMD ["/elasticmq/run.sh"]
