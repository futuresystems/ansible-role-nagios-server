
FROM phusion/baseimage:0.9.17

RUN apt-get update
RUN apt-get -y install python-dev python-pip httpie
RUN pip install jinja2 ansible

RUN mkdir -p /test/roles/nagios_server
ADD defaults /test/roles/nagios_server/defaults
ADD files /test/roles/nagios_server/files
ADD handlers /test/roles/nagios_server/handlers
ADD tasks /test/roles/nagios_server/tasks
ADD templates /test/roles/nagios_server/templates
ADD test /test/

WORKDIR /test
ENTRYPOINT ./run.sh
