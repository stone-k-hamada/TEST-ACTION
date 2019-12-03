#!/bin/sh -l

echo "start"

sshpass -p XXX ssh -t -t XXX@XXX bash -c "
cd
sudo mkdir /TESTDIR
"

echo "end"
