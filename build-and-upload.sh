#!/bin/bash

$(AWS_PROFILE=pjnet aws ecr get-login --no-include-email --region us-east-1)
export AWS_PROFILE=pjnet
docker build --compress --squash -t helpercron .
docker tag helpercron:latest 257269553028.dkr.ecr.us-east-1.amazonaws.com/helpercron:latest
docker push 257269553028.dkr.ecr.us-east-1.amazonaws.com/helpercron:latest


