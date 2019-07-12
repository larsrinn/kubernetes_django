How to deploy on Digital Ocean:

* Create a new Cluster on Digital Ocean 


Locally:
* Run `minikube start` 
* Confirm `minikube status` 
* Run `eval $(minikube docker-env)`
* Confirm `kubectl config current-context` 
* Open dashboard: `minikube dashboard`
* Run
    * `cd deploy/kubernetes`
    * `kubectl apply -f postgres/.` 
    * `kubectl apply -f redis/.` 
    * `kubectl apply -f django/.` 
    * `kubectl apply -f celery/.` 
    * `kubectl apply -f flower/.`
* run `minikube service django-service`
    
Shutdown:
* Run `eval $(minikube docker-env -u)`
* Run `minikube delete`

## todo
* gunicorn
* nginx
* staticfiles
* healthchecks
* https://medium.com/@markgituma/kubernetes-local-to-production-with-django-6-add-prometheus-grafana-monitoring-with-helm-926fafbe1d
 
