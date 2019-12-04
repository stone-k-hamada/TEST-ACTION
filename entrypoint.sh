#!/bin/sh -l

HOME_DIR="/"

echo "Start"

echo "Create a zip file from my github repository."
cd ./test && ls -a
zip -r dist ./
# -x \*/.git/\* \*/.github/\*
echo "zip file created."

ls

echo "Start transporting zip file."
sshpass -p $AWS_PASS scp -t -o StrictHostKeyChecking=no dist.zip ${AWS_LOGIN}:${HOME_DIR} -e
echo "transported zip file."

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
sudo mkdir /test
'"

echo "end"
