#!/bin/sh -l

echo "start"

sshpass -p XXX ssh -t -t ${AWS_LOGIN} bash -c "
cd
sudo mkdir /TESTDIR
"

echo "end"
