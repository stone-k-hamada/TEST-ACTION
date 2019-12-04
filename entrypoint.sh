#!/bin/sh -l

HOME_DIR="/test"

echo "Start"

echo "Create a zip file from my github repository."
cd ./test && ls -a
zip -r dist ./
# -x \*/.git/\* \*/.github/\*
echo "zip file created."

echo "Start transporting zip file."
sshpass -p $AWS_PASS ssh -t -o StrictHostKeyChecking=no $AWS_LOGIN
sshpass -p $AWS_PASS scp dist.zip ${AWS_LOGIN}:${HOME_DIR}
echo "transported zip file."

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
sudo mkdir /test
'"

echo "end"
