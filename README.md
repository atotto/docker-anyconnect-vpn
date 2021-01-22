# How to use

## ssh

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

## ssh with port-forwarding


Terminal2:

example of forwarding 22(ssh) port.
```
$ docker-compose exec ssh ssh abc@example.com -L 0.0.0.0:22:localhost:22
```

Terminal3:

You can check the IP address of the vpn container.
```
$ docker network inspect docker-anyconnect-vpn_default | jq .[0].Containers                                                        [~/src/.../atotto/docker-anyconnect-vpn:master]
{
  "xxxx": {
    "Name": "vpn",
    "EndpointID": "xxxx",
    "MacAddress": "02:11:00:15:00:02",
    "IPv4Address": "172.21.0.2/16",
    "IPv6Address": ""
  }
}
```

You can access remotely via ssh tunneling.

example:
```
$ ssh 172.21.0.2
```
and
```
$ scp xxx 172.21.0.2:
```
etc.