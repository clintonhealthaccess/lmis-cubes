Spike for OpenLMIS Reporting Using Cubes
----------------------------------------


Setup Cubes
===========

* (Clone the lmis-cubes repo somewhere)
* `cd lmis-cubes`
* `brew install python`
* `pip install virtualenv`
* `virtualenv --python=/usr/bin/python2.7 env`
* `source env/bin/activate`
* `pip install -r requirements.txt`

* Install lmis production dataset to PostGres per slicer.ini
* `slicer serve slicer.ini`


Sample Report
=============

* open [index.html](http://localhost:5555/index.html)
