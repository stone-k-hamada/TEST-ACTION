#!/bin/sh -l

echo "start"

sshpass -p $AWS_PASS ssh -t -t -o StrictHostKeyChecking=no $AWS_LOGIN

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
cd /test
mkdir AAA
'"

echo "end"
