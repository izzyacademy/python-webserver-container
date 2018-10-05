
## Helm Steps for Installing and Updating Charts

```shell
helm del --purge p20-thursday-releases
```

```shell
helm install --set appData.imageVersion=v4 --name p20-thursday-release ./app-languages
```

```shell
helm upgrade --set appData.imageVersion=v1 p20-thursday-releases ./app-languages
```

