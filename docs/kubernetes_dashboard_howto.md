# Access kubernetes default dashboard 

iMKE starts a kubernetes dashboard by default.

If you have kubectl installed on your local machine (e.g. where your browser is also located) it is easy to access the dashboard:

After starting a proxy using ``` kubectl proxy ``` you are able to open the dashboard in your browser: http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/

To access the dashboard you can authorize yourself by uploading a kubeconfig file.


