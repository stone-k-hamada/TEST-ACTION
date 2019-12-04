#!/bin/sh -l

HOME_DIR="/"

echo "Start"

echo "Create a zip file from my github repository."
cd ./test && ls -a
zip -r dist ./
# -x \*/.git/\* \*/.github/\*
echo "zip file created."

ls
echo $HOME_DIR

echo "Start transporting zip file."
sshpass -p $AWS_PASS ssh -t StrictHostKeyChecking=no ${AWS_LOGIN}
sshpass -p $AWS_PASS scp -o ${AWS_LOGIN}:${HOME_DIR}
echo "transported zip file."

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
sudo mkdir /test
'"

echo "end"
