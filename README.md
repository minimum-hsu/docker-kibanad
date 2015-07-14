# docker-kibanad

## Build

Enter the following command in the repo directory.

```
$sudo docker build --force-rm=true -t kibanad .
```

## Run

If Elasticsearch server is _192.168.0.100_, 

```
$sudo docker run -d -e "ES_HOST=192.168.0.100" -e "ES_PORT=9200" -p 5601:5601 kibanad
```

If Elasticsearch server is [minimum-hsu/docker-elasticsearchd](https://github.com/minimum-hsu/docker-elasticsearchd) in the same docker engine,

```
$sudo docker run -d -e "ES_HOST=es" -e "ES_PORT=9200" -p 5601:5601 --link elasticsearchd:es kibanad
```

If Elasticsearch server port is 9200, the run option `-e "ES_PORT=9200"` can be omitted.

## Check

+ Use browser and URL is `http://localhost:5601/`, and replace _localhost_ into your server domain or IP.
