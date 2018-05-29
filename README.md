Squid
=====

Slim image (14.6MB) of Squid 3.5.27 running under Alpine Linux.

How to use
==========

```sh
docker run -p 3128:3128 lowess/squid:3.5.27
```

Using volumes for custom configuration:

```sh
docker run  -v <configPath>/squid.conf:/etc/squid/squid.conf:ro \
            -v <configPath/cache:/var/cache/squid:rw \
            -v /var/log/squid:/var/log/squid:rw \
            -v /etc/localtime:/etc/localtime:ro \
            -p 3128:3128 \
            lowess/squid
```

Credits
=======

This project was originally taken from [@chrisdaish](https://github.com/chrisdaish) - [docker-squid](https://github.com/chrisdaish/docker-squid)
