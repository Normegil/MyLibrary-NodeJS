#!/bin/bash
docker run \
	-d \
	-p 8080:8080\
	--link log-fluentd:fluentd \
	--link mongo:mongo \
	--volumes-from data \
	--name node-server \
	mylibrary/node-server
