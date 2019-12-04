#!/bin/sh -l

echo "start"

echo "create a zip file from my github repository"
cd ~/test && ls -a
cd ./test && ls -a
cd /test && ls -a
# zip -r /test/dist.zip / -x \*/.git/\* \*/.github/\*
cd /test && ls -a

sshpass -p $AWS_PASS ssh -t -o StrictHostKeyChecking=no $AWS_LOGIN

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
sudo mkdir /test
'"

echo "end"
