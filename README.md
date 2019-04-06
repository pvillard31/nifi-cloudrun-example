# Running a NiFi workflow in Cloud Run on the Google Cloud Platform

## Full documentation and instructions

[My full blog post to get everything up and running.](https://pierrevillard.com/?p=3282) (also on [Medium](https://medium.com/@pierre.villard/deploying-apache-nifi-workflows-on-google-cloud-run-8c0c988354f1))

## Quickstart

````bash
git clone git@github.com:pvillard31/nifi-cloudrun-example.git
cd nifi-cloudrun-example
gcloud auth configure-docker
docker build -t [HOSTNAME]/[PROJECT-ID]/[IMAGE]:[TAG] .
# Example: docker build -t eu.gcr.io/my-gcp-project/minifi-csvjson:0.0.1 .
docker push [HOSTNAME]/[PROJECT-ID]/[IMAGE]:[TAG] .
# Example: docker push eu.gcr.io/my-gcp-project/minifi-csvjson:0.0.1
````
