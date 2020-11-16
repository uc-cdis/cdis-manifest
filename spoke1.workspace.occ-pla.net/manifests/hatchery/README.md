# TL;DR

hatchery config - see also https://github.com/uc-cdis/hatchery

## jupyterslim.yml

Test locally like this:

```
#
# the .env file defines ${DATA_VOLUME} and ${USER_VOLUME}
# for local testing with docker-compose
#
mkdir ./user-volume ./data-volume
docker-compose -f ./jupyterslim.yml
```
