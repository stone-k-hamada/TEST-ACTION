#!/bin/sh -l

echo "start"

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "
mkdir /test/TESTDIR
"

echo "end"
