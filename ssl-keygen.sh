openssl genrsa -des3 -out /etc/ssl/server.key 4096
openssl req -new -key /etc/ssl/server.key -out /etc/ssl/server.csr
openssl x509 -req -days 3650 -in /etc/ssl/server.csr -signkey /etc/ssl/server.key -out /etc/ssl/server.crt
openssl rsa -in /etc/ssl/server.key -out /etc/ssl/server.key.insecure
mv /etc/ssl/server.key /etc/ssl/server.key.secure
mv /etc/ssl/server.key.insecure /etc/ssl/server.key
mkdir /etc/apache2/ssl
cp /etc/ssl/server.key /etc/apache2/ssl
cp /etc/ssl/server.crt /etc/apache2/ssl
a2enmod ssl
rm /etc/apache2/sites-enabled/000*
ln -s /etc/apache2/sites-available/default-ssl /etc/apache2/sites-enabled/000-default-ssl
echo "ServerName localhost" >> /etc/apache2/apache2.conf
/etc/init.d/apache2 restart