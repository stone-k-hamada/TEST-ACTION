#!/bin/sh -l

echo "start"

echo "create a zip file from my github repository"
cd ./test && ls -a
zip -r ./test/dist.zip ./ -x \*/.git/\* \*/.github/\*
echo "zip file created"


echo "start transporting files"
sshpass -p $AWS_PASS scp -t -o StrictHostKeyChecking=no ./dist.zip ${AWS_LOGIN}:/test

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
sudo mkdir /test
'"

echo "end"
