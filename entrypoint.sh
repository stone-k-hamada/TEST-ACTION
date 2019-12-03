#!/bin/sh -l

echo "start"

sshpass -p XXX ssh -t -t ${AWS_LOGIN} bash -c "
sudo mkdir /TESTDIR
echo "AAAAAAA"
echo "AAAAAAA"
echo "AAAAAAA"
echo "AAAAAAA"
echo "AAAAAAA"
echo "AAAAAAA"
echo "AAAAAAA"
echo "AAAAAAA"
echo "AAAAAAA"
echo "AAAAAAA"
echo "AAAAAAA"
"

echo "end"
