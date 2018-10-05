
## Helm Steps for Installing and Updating Charts

Run this command to view the list of releases that have been deployed already if applicable

```shell
helm list
``

Running this command to delete a specific release
```shell
helm del --purge p20-thursday-releases
```

Run this command to install the Helm Chart

```shell
helm install --set appData.imageVersion=v4 --name p20-thursday-release ./app-languages
```

Run this command to update the deployment. This will override the variable in values.yaml and the image with the v1 tag installed earlier will replace v4

```shell
helm upgrade --set appData.imageVersion=v1 p20-thursday-releases ./app-languages
```

