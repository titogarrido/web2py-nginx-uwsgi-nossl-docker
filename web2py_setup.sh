#!/bin/sh
cd /home/www-data/web2py
/sbin/setuser www-data python -c "from gluon.main import save_password; save_password('$PW',443)"
/sbin/setuser www-data python -c "from gluon.main import save_password; save_password('$PW',80)"
echo "admin password set to $PW"
