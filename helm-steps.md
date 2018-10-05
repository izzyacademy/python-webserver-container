
## Helm Installation Steps

```shell
# Get the Script
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get -o get_helm.sh

# Make it executable on the local machine
chmod 700 get_helm.sh

# Run the installation script (you might have to do it as sudo)
# This will install Helm locally
$ ./get_helm.sh

# Initialize Helm and install it on the K8S cluster
$ helm init
```

## Helm Steps for Installing and Updating Charts

Run this command to view the list of releases that have been deployed already if applicable

```shell
helm list
```

Running this command to delete a specific release
```shell
helm del --purge p20-thursday-releases
```

Run this command to install the Helm Chart

```shell
helm install --set appData.imageVersion=v4 --name p20-thursday-release ./app-languages
```

Run this command to update the deployment. This will override the variable in [values.yaml](https://github.com/izzyacademy/python-webserver-container/blob/master/app-languages/values.yaml) and the image with the v1 tag installed earlier will replace v4

```shell
helm upgrade --set appData.imageVersion=v1 p20-thursday-releases ./app-languages
```

## Logging In to Azure Container Registry

```shell

az acr login --name <acrName>

az acr login --name p24dockerepo

```

## Building Docker Containers and Publishing to ACR

```shell

# Build the Image and Tag It
docker build -t p24dockerepo.azurecr.io/nginxserver .

# Upload to ACR
docker push p24dockerepo.azurecr.io/nginxserver

# View Repo Contents
az acr repository list --name p24dockerepo --output tabl

```

## Adding ACR as a Helm Repo

```shell

# Add Azure Container Registry as One of the Helm Repos
az acr helm repo add -n p24dockerepo

```

## Pushing Helm Charts to Azure Container Registry

```shell

# Create the chart and then make changes to app-languages/Chart.yaml, app-languages/templates/*.yaml and app-languages/values.yaml
helm create app-languages

# Generate a Package the Helm Chart
helm package app-languages

# Publish the Chart to the ACR Helm Repo
az acr helm push -n p24dockerepo ./app-languages-0.1.0.tgz


```


## Install Using Helm Repo Instead of Local Chart

```shell

# Add Azure Container Registry as One of the Helm Repos
az acr helm repo add -n p24dockerepo

```

Run this command to install the Helm Chart

```shell
helm install --set appData.imageVersion=v4 --name p20-thursday-release app-languages
```

```shell
helm upgrade --set appData.imageVersion=v1 p20-thursday-releases app-languages
```
