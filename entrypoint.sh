#!/bin/sh -l

echo "start"

sshpass -p ${AWS_PASS} ssh -t -t ${AWS_LOGIN} bash -c "
cd
sudo mkdir /TESTDIR
"

echo "end"
