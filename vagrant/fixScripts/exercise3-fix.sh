#!/bin/bash
#add fix to exercise3 here
sudo sed -i '0,/deny from all/s//allow from all/' /etc/apache2/sites-available/default
sudo service apache2 reload

