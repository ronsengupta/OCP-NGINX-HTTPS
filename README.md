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
12.  Alternatively you can use this $oc new-app secserv -o yaml > myapp.yaml and then $oc create -f myapp.yaml



___________________________________
___________________________________


  # List all local templates and image streams that can be used to create an app
  $ oc new-app --list

  # Search all templates, image streams, and Docker images for the ones that match "ruby"
  $ oc new-app --search ruby

  # Create an application based on the source code in the current git repository (with a public remote)
  # and a Docker image
  $ oc new-app . --docker-image=repo/langimage

  # Create a Ruby application based on the provided [image]~[source code] combination
  $ oc new-app centos/ruby-22-centos7~https://github.com/openshift/ruby-hello-world.git

  # Use the public Docker Hub MySQL image to create an app. Generated artifacts will be labeled with db=mysql
  $ oc new-app mysql MYSQL_USER=user MYSQL_PASSWORD=pass MYSQL_DATABASE=testdb -l db=mysql

  # Use a MySQL image in a private registry to create an app and override application artifacts' names
  $ oc new-app --docker-image=myregistry.com/mycompany/mysql --name=private

  # Create an application from a remote repository using its beta4 branch
  $ oc new-app https://github.com/openshift/ruby-hello-world#beta4

  # Create an application based on a stored template, explicitly setting a parameter value
  $ oc new-app --template=ruby-helloworld-sample --param=MYSQL_USER=admin

  # Create an application from a remote repository and specify a context directory
  $ oc new-app https://github.com/youruser/yourgitrepo --context-dir=src/build

  # Create an application based on a template file, explicitly setting a parameter value
  $ oc new-app --file=./example/myapp/template.json --param=MYSQL_USER=admin

  # Search for "mysql" in all image repositories and stored templates
  $ oc new-app --search mysql

  # Search for "ruby", but only in stored templates (--template, --image and --docker-image
  # can be used to filter search results)
  $ oc new-app --search --template=ruby

  # Search for "ruby" in stored templates and print the output as an YAML
  $ oc new-app --search --template=ruby --output=yaml


