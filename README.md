# Quick Demo For Self Signed Nginx
1. Create the certificate as following
#sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt
