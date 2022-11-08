#!/bin/bash

echo "This is Script 2"
echo "Username & password is $CREDS"
curl --silent http://$CREDS@jenkins.dev.lithium.com/job/LIA_PACKAGE_JAVA8_BUILD/lastBuild/api/json -H 'ContentType: text/xml'
