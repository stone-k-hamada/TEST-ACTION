#!/bin/sh -l

echo "start"

sshpass -p $AWS_PASS ssh -t -o StrictHostKeyChecking=no $AWS_LOGIN

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
mkdir /test/AAA
touch /test/TESTTEST
'"

echo "end"
