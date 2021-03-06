# install Python3 with build tools
sudo apt-get install -y python3-dev build-essential python3-setuptools python3-pip

# install virtualenv
sudo pip3 install virtualenv

# Install Postgresql
sudo apt-get install -y postgresql-9.3 libpq-dev postgresql-9.3-contrib

# Install PostGIS
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt trusty-pgdg main" >> /etc/apt/sources.list'
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-9.3-postgis-2.1 pgadmin3 postgresql-contrib

# Install other GEO libraries (from geodjango tutorial)
sudo apt-get install -y binutils libproj-dev gdal-bin libgeoip1 python-gdal

# Dependencies for Pillow (image package for Python)
apt-get install -y libjpeg-dev libtiff-dev zlib1g-dev libfreetype6-dev liblcms2-dev

# Virtualenv setup
easy_install -U pip
pip install virtualenv virtualenvwrapper stevedore virtualenv-clone

# Create DB
createdb -Upostgres mapping
psql -Upostgres mapping -c "CREATE EXTENSION postgis;"
psql -Upostgres mapping -c "CREATE EXTENSION postgis_topology;"