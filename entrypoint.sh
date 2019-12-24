#!/bin/sh -l

HOME_DIR="/usr/local/knight"

echo "Start"

echo "Create a zip file from my github repository."
cd ./knight && ls -a
zip -r dist ./ -x \*/.git/\* \*/.github/\*
echo "zip file created."

echo "Start transporting zip file."
sshpass -p $AWS_PASS ssh -t -o StrictHostKeyChecking=no $AWS_LOGIN
sshpass -p $AWS_PASS scp dist.zip ${AWS_LOGIN}:${HOME_DIR}
echo "transported zip file."

sshpass -p $AWS_PASS ssh $AWS_LOGIN bash -c "'
cd /usr/local/knight
sudo rm -rf tmp_zip
sudo mkdir tmp_zip
sudo unzip dist.zip -d tmp_zip
sudo cp -Rpf tmp_zip/. ./
sudo rm -rf tmp_zip
sudo rm dist.zip
'"

echo "end"
