virtualenv --python=/usr/bin/python2.7 env
source env/bin/activate
pip install -r requirements.txt
ruby replace_db_credentials.rb
slicer serve slicer.ini
