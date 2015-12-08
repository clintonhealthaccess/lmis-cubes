virtualenv --python=/usr/bin/python2.7 env
source env/bin/activate
pip install -r requirements.txt
slicer serve slicer.ini
