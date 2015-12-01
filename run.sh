#!/bin/bash
java -jar -Dlogback.configurationFile=logging.xml -Dconfig.file=queue.conf /elasticmq/elasticmq-server-0.8.0.jar
