#! /usr/bin/env bash
python --version

# Mount local source code to /opt/var/invoke
# Make a clone into ~/invoke to avoid volume mapping issues
cd ~
git clone /opt/var/invoke ./invoke/
cd invoke/

echo "Upgrading pip..."
python -m pip install -U pip -qq
echo "Installing deps via -r docker-test-requirements.txt ..."
python -m pip install -r /opt/var/invoke/docker-test-requirements.txt -qq

pytest --color=yes --capture=no --cov=invoke
# inv test
