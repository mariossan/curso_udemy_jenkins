FROM jenkins/jenkins:lts

USER root

RUN apt update -y && \
    apt install curl -y && \
    apt install python-pip -y
#RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py

RUN pip install -U ansible

USER jenkins
