
all: run

.PHONY: build
build: Dockerfile
	docker build -t wifi .

.PHONY: dev
dev: build
	docker run --rm -it --privileged --net=host --volume /usr/sbin/rfkill:/usr/sbin/rfkill --volume /sbin/ifconfig:/sbin/ifconfig --volume /sbin/iwconfig:/sbin/iwconfig --volume /sbin/iwlist:/sbin/iwlist --volume /lib/arm-linux-gnueabihf/libiw.so.30:/lib/arm-linux-gnueabihf/libiw.so.30 --device /proc/net/wireless:/proc/net/wireless wifi /bin/bash

.PHONY: run
run: build
	docker run --rm -it --privileged --net=host --volume /usr/sbin/rfkill:/usr/sbin/rfkill --volume /sbin/ifconfig:/sbin/ifconfig --volume /sbin/iwconfig:/sbin/iwconfig --volume /sbin/iwlist:/sbin/iwlist --volume /lib/arm-linux-gnueabihf/libiw.so.30:/lib/arm-linux-gnueabihf/libiw.so.30 --device /proc/net/wireless:/proc/net/wireless wifi

.PHONY: clean
clean:
	-docker rm -f wifi 1>/dev/null 2>&1 || :
	

