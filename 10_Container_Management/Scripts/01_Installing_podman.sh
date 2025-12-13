#!/bin/bash
sudo dnf install -y epel-release
sudo dnf update
sudo dnf install -y podman podman-compose
podman -v