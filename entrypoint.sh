#!/bin/sh -l

echo "Start"

echo "Create a zip file from my github repository."
cd ./test && ls -a
zip -r ./test/dist.zip ./
# -x \*/.git/\* \*/.github/\*
echo "zip file created."


echo "Start transporting zip file."
sshpass -p $AWS_PASS scp -t -o StrictHostKeyChecking=no ./dist.zip ${AWS_LOGIN}:/test
echo "transported zip file."

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
sudo mkdir /test
'"

echo "end"
