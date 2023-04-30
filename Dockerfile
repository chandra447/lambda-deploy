FROM python:3.9.16-slim-buster

#installing aws cli and also updating the yam

RUN apt-get update && apt-get install -y bash && apt-get install -y zip &&\
    apt-get install -y awscli

RUN pip install boto3==1.17.101

COPY main.sh /bin/main.sh
COPY main.py /bin/main.py








