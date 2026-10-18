#!/bin/bash

apt update -y

apt install docker.io -y

systemctl enable docker

systemctl start docker
