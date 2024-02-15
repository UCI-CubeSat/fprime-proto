#!/bin/bash

cd /usr/src/fprime
python3 -m venv venv 

. venv/bin/activate 

pip install -U fprime-tools

pip install -Ur fprime/requirements.txt

fprime-util generate 
fprime-util build -j4

deactivate