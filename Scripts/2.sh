#!/bin/bash

source env.properties
echo "This is Script 2"
echo "Username & password is $CREDS"
echo "value of VAR1 fetched from script 1 is $VAR1"
echo VAR2=two >> env.properties

# curl --silent http://$CREDS@jenkins.dev.lithium.com/job/LIA_PACKAGE_JAVA8_BUILD/lastBuild/api/json -H 'ContentType: text/xml'
