#! /bin/bash
yum update -y
yum install python3
pip3 install flask
cd /home/ec2-user
FOLDER="https://raw.githubusercontent.com/14081991/my_projects/main/Project-001-Roman-Numerals-Converter/"
wget ${FOLDER}/app.py
mkdir templates && cd templates
wget ${FOLDER}/templates/index.html
wget ${FOLDER}/templates/result.html
cd ..
python3 app.py