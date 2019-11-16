Grafana Setup
Grafana requires the initial admin password as a secret. This secret can be 
created by the command:
kubectl -n monitoring create secret generic grafana --from-literal=admin_password=admin

After creating that secret, grafana can be deployed throug the usual kubectl apply:
kubectl -n monitoring apply -f grafana.yaml

After this, the manual parts of setup can be done through the UI, which will be
available at `http://<any node>:30300/`
You'll be prompted to login - username will be 'admin' and the password will 
be whatever you put into the secret. You'll then be prompted to change the password.

After logging in, you'll be on the grafana 'home' dashboard, which is kind of a 
wizard for set up. The main thing at this point is to set up the datasource. Click
the 'Create your first data source' button, give the data source a name (I use
'prometheus'), set the type to 'Prometheus', the URL to 'http://prometheus:9090'
and click the 'Save & Test' button.
