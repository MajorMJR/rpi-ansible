# Pull base image 
FROM resin/rpi-raspbian:jessie
MAINTAINER Mitch Roote <mitch@r00t.ca>

# Update Repo
RUN apt-get -y update #FUCK

# Install packages
RUN apt-get --no-install-recommends -y install python3 git python-pip python3-dev python-dev build-essential
RUN pip install paramiko PyYAML Jinja2 httplib2

RUN mkdir /ansible
WORKDIR /ansible

# Download Ansible
RUN git clone git://github.com/ansible/ansible.git --recursive

# Run script to source ansible install
COPY run.sh /ansible/
ENTRYPOINT ["/ansible/run.sh"]

# Default command on start
CMD ["/bin/bash"]

