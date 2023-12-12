Pertama, lakukan git clone dari repository https://github.com/docker-archive/swarm-microservice-demo-v1. Setelah itu, periksa Dockerfile yang ada di direktori vote worker dan vote app. Setelah melihat Dockerfile di sana, periksa apakah file tersebut ada di Docker Hub.

Selanjutnya, atur file YAML untuk komponen-komponen seperti database (db), hasil (result), pekerja (worker), dan pemilihan (vote) beserta port-port yang dibutuhkan. Sebelum melakukan langkah-langkah tersebut, pastikan telah menyiapkan klaster Kubernetes dengan menggunakan Google Kubernetes Engine (GKE) melalui Terraform. Ini mencakup pembuatan klaster Kubernetes beserta jaringan dan konfigurasi lainnya.


- git clone https://github.com/adamshaffa/test-case.git

- code test-case or cd test-case





### before running terraform u must : 
- run gcloud auth login for gcp


## To Run Terraform 

- Open the main.tf 
- change project to your project name ( in this case i use GCP. If use AWS or ETC Change to the resource )
- run terraform init
- run terraform apply

## Run the app 
kubectl create -f k8s-specifications/

## To remove them, run:


kubectl delete -f k8s-specifications/

## TO see 

It must be on http://<localhost>:31000 for the vote
It must be on http://<localhost>:31000 for the view