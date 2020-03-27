== Prérequis ==
Downloader le OpenShift CLI - descendre au bas de la page
https://github.com/openshift/origin/releases/

Installer le OpenShift CLI pour Windows
https://blog.openshift.com/installing-oc-tools-windows/

Liens vers les templates BD Openshift : 
https://github.com/openshift/origin/tree/master/examples/db-templates

Se loguer avec l'api oauth app token
oc login --token=<oauth token> --server=https://<os app url>:6443

== MySQL Template ==

Créer une nouvelle application, en applicant le template :

`oc new-app -f template-mysql-persistent.json`

Output : 
``` bash
--> Deploying template "boyce-mysql-poc/mysql-persistent" for "template-mysql-persistent.json" to project boyce-mysql-poc

     MySQL
     ---------
     MySQL database service, with persistent storage. For more information about using this template, including OpenShift considerations, see https://github.com/sclorg/mysql-container/blob/master/5.7/root/usr/share/container-scripts/mysql/README.md.

     NOTE: Scaling to more than one replica is not supported. You must have persistent volumes available in your cluster to use this template.

     The following service(s) have been created in your project: mysql.

            Username: userOYT
            Password: ------
       Database Name: sampledb
      Connection URL: mysql://mysql:3306/

     For more information about using this template, including OpenShift considerations, see https://github.com/sclorg/mysql-container/blob/master/5.7/root/usr/share/container-scripts/mysql/README.md.

     * With parameters:
        * Memory Limit=512Mi
        * Namespace=openshift
        * Database Service Name=mysql
        * MySQL Connection Username=userOYT # generated
        * MySQL Connection Password=------ # generated
        * MySQL root user Password=------ # generated
        * MySQL Database Name=sampledb
        * Volume Capacity=1Gi
        * Version of MySQL Image=5.7        

--> Creating resources ...
    secret "mysql" created
    service "mysql" created
    persistentvolumeclaim "mysql" created
    deploymentconfig.apps.openshift.io "mysql" created
--> Success
    Application is not exposed. You can expose services to the outside world by executing one or more of the commands below:
     'oc expose svc/mysql'
    Run 'oc status' to view your app.
```
Lister les ressources d'un projet : 

`oc get all -o name`

Output (Exemple) : 
``` bash
pod/mysql-1-deploy
pod/mysql-1-n26pf
replicationcontroller/mysql-1
service/mysql
deploymentconfig.apps.openshift.io/mysql
```

Se connecter au container : 

`oc rsh pod/mysql-1-n26pf`

Une fois dans le container, vérifier le mot de passe de la BD et se connecter à MySQL :
``` bash
sh-4.2$ env | grep MYSQL_PASS
MYSQL_PASSWORD=-----------
sh-4.2$ mysql -u $MYSQL_USER -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14406
Server version: 5.7.24 MySQL Community Server (GPL)

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```

Une fois connecté à la BD, exécuter quelques commandes tests :
``` bash 
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| sampledb           |
+--------------------+
2 rows in set (0.01 sec)

mysql> use sampledb;
Database changed
mysql> CREATE TABLE animaux (name VARCHAR(20), owner VARCHAR(20),
    ->        species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
+--------------------+
| Tables_in_sampledb |
+--------------------+
| animaux            |
+--------------------+
1 row in set (0.00 sec)

mysql>
```

Exemple de création d'un pod avec le template "template-pod-env.yaml", qui va utiliser les secrets du namespace : 

`oc create -f template-pod-env.yaml`

Le template crée un pod, et va chercher deux valeurs (database-user et database-password) dans le secret "mysql" du namespace. Il met ses valeurs dans des variables d'environnements. Il liste ses variables avant de se terminer. 

Il est possible de voir le log du pod dans la console d'admin : 

``` bash
...
KUBERNETES_PORT_443_TCP_ADDR=172.30.0.1
MYSQL_PASSWORD=------------ 
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
KUBERNETES_PORT_443_TCP_PORT=443
KUBERNETES_PORT_443_TCP_PROTO=tcp
MYSQL_USER=userOBB
KUBERNETES_PORT_443_TCP=tcp://172.30.0.1:443
...
```

Dans cet exemple, le pod a bien été chercher les valeurs dans les secrets et les a mis dans les variables MYSQL_USER et MYSQL_PASSWORD.
