#!/bin/sh -l

echo "start"

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
touch test-action
mkdir /test/TESTDIR
'"

echo "end"
