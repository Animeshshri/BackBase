# BackBase

Instruction for apache

oc login -u<username> -p<password> <serverurl>

oc new-project <project name>

oc new-app --name apache https://github.com/Animeshshri/BackBase.git --insecure-registry

oc expose svc apache

oc get route(to get the url of the apache)
 
#To scale the replicas to 3
oc scale dc --selector=apache --replicas=3

-----------------------------------------------------------------------------------------------------------------------
# instruction to deploy tomact in openshift
#Assuming already logged in to cluster

oc new-project <project name>


oc new-app --name tomcat --docker-image registry.redhat.io/jboss-webserver-5/webserver53-openjdk8-tomcat9-openshift-rhel7

oc get pods

oc expose svc tomact


oc get route (to get url for the tomact)

follow instruction which is shared in https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/) to deploy war in tomcat


---------------------------------------------------------------------------


jenkins can be deployed using web console available in catalog as image 

once deployed we can access the jenkins and can create dummy static job





 