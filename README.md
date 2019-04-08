# How to use



Terminal1:

```sh
export ANYCONNECT_SERVER=https://example.com
export ANYCONNECT_USER=abc
export ANYCONNECT_PASSWORD=1234567
export ANYCONNECT_FINGERPRINT=sha256:cafebabe
export MY_SERVER_ADDR=192.168.1.2
```

```
$ docker-compose up --abort-on-container-exit
```

Terminal2:

```sh
$ docker-compose exec ssh ssh abc@example.com
```
