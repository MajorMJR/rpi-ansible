## RPI-ANSIBLE

# A docker container for the Raspberry Pi to install the latest version of Docker

To build the container:
docker build -t rpi-ansible .

To run the container:
docker run -t -i -v /var/ansible:/ansible/manifest rpi-ansible
