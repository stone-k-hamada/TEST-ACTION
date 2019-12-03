#!/bin/sh -l

echo "start"

sshpass -p $AWS_PASS ssh -t -o StrictHostKeyChecking=no $AWS_LOGIN

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
sudo mkdir /test
'"

echo "end"
