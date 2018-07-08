#!/usr/bin/env sh

set -x

# update package lists
apt-get update -y

# install necessary packages
apt-get install -y \
  locales

# set language to en_US.UTF-8 (requires locales)
echo "LC_ALL=en_US.UTF-8" >> /etc/environment && \
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
echo "LANG=en_US.UTF-8" > /etc/locale.conf && \
locale-gen en_US.UTF-8
