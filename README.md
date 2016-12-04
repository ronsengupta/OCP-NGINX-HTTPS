# Quick Demo For Self Signed Nginx

1. Create the certificate as following
$ sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt

2. Build Docker Image
$ docker build -t secserv .

3. Test the image/Run Container
$ docker run -d --name ronsec secserv

4. $ oc whoami -t

5. $ MYTOKEN=$(oc whoami -t)

6. $ docker login -u admin -p $MYTOKEN 172.30.10.97:5000

7. $ docker tag 53d2566ecafd 172.30.10.97:5000/project-name/secserv

8. $ docker images

9. $ docker push 172.30.10.97:5000/project-name/secserv:latest

10. [vagrant@rhel-cdk nginx]$ oc get is


NAME      DOCKER REPO                       TAGS      UPDATED
secserv   172.30.10.97:5000/project-name/secserv   latest    About an hour ago


11. $ oc new-app secserv
12. Alternatively you can use this $oc new-app secserv -o yaml > myapp.yaml and then $oc create -f myapp.yaml
