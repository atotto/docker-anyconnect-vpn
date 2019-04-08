
build:
	docker build . -f Dockerfile.vpn -t atotto/docker-anyconnect-vpn:vpn
	docker build . -f Dockerfile.ssh -t atotto/docker-anyconnect-vpn:ssh

push:
	docker push atotto/docker-anyconnect-vpn:vpn
	docker push atotto/docker-anyconnect-vpn:ssh
