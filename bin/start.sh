#!/bin/bash
#
name=$0
echo "Execute location: $0"
CUBES_PATH=$(dirname ${name})
export MODELS_PATH=$CUBES_PATH/../models
export CUBES_PATH=$CUBES_PATH

virtualenv --python=/usr/bin/python2.7 $CUBES_PATH/env
source $CUBES_PATH/env/bin/activate
pip install -r $CUBES_PATH/requirements.txt
ruby $CUBES_PATH/replace_db_credentials.rb
nohup slicer serve $CUBES_PATH/slicer.ini &



