!/bin/bash

chmod -R 755 /opt/datalogics/pdf-utility
#chmod -R 755 /opt/datalogics/public
chown centos:centos -R /opt/datalogics/pdf-utility
#chown centos:centos -R /opt/datalogics/public

# touch /opt/datalogics/Zapier-integration/testfile
#chmod -R 777 /var/www/html/
#cd /var/www

#chown v-sen:www-data /var/www/html

#cd /var/www/html

#chown v-sen:v-sen *
#chown www-data:www-data -R wp-content d
#sudo find . -type f -exec chmod 644 {} +
#sudo find . -type d -exec chmod 755 {} +

# 600 resulted in error
# chmod 644 wp-config.php


