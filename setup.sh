#!/bin/bash
# install requirements for vitrual enviroment
python3 -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
pip install flask-classful pyyaml 
