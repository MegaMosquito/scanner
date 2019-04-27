# Docker Container For Raspberry Pi to Scan WiFi Signal Levels

## Usage

* Install `make` (if not already present)

```
  apt install -y make
```

* Run `make` (will build and run continer with output to the terminal)

```
  make
```

## Example output

```
...
docker run --rm -it --privileged --net=host --volume /usr/sbin/rfkill:/usr/sbin/rfkill --volume /sbin/ifconfig:/sbin/ifconfig --volume /sbin/iwconfig:/sbin/iwconfig --volume /sbin/iwlist:/sbin/iwlist --volume /lib/arm-linux-gnueabihf/libiw.so.30:/lib/arm-linux-gnueabihf/libiw.so.30 --device /proc/net/wireless:/proc/net/wireless wifi
Scanning...

Quality=64/70  Signal level=-46 dBm ESSID:"Hobbiton"
Quality=44/70  Signal level=-66 dBm ESSID:"Xfinity300"
Quality=38/70  Signal level=-72 dBm ESSID:"xfinitywifi"
Quality=62/70  Signal level=-48 dBm ESSID:"Bag End" 


Scanning...

Quality=64/70  Signal level=-46 dBm ESSID:"Hobbiton"
Quality=43/70  Signal level=-67 dBm ESSID:"Xfinity300"
Quality=38/70  Signal level=-72 dBm ESSID:"xfinitywifi"
Quality=64/70  Signal level=-46 dBm ESSID:"Bag End"
Quality=30/70  Signal level=-80 dBm ESSID:"Wonderland2G"
Quality=30/70  Signal level=-80 dBm ESSID:"Xfinity300" 


Scanning...

Quality=63/70  Signal level=-47 dBm ESSID:"Hobbiton"
Quality=44/70  Signal level=-66 dBm ESSID:"Xfinity300"
Quality=38/70  Signal level=-72 dBm ESSID:"xfinitywifi"
Quality=62/70  Signal level=-48 dBm ESSID:"Bag End"
Quality=29/70  Signal level=-81 dBm ESSID:"Wonderland2G"
Quality=31/70  Signal level=-79 dBm ESSID:"Xfinity300"
Quality=31/70  Signal level=-79 dBm ESSID:""
Quality=32/70  Signal level=-78 dBm ESSID:"xfinitywifi" 


Scanning...

Quality=64/70  Signal level=-46 dBm ESSID:"Hobbiton"
Quality=44/70  Signal level=-66 dBm ESSID:"Xfinity300"
Quality=38/70  Signal level=-72 dBm ESSID:"xfinitywifi"
Quality=64/70  Signal level=-46 dBm ESSID:"Bag End"
Quality=29/70  Signal level=-81 dBm ESSID:"Wonderland2G"
Quality=31/70  Signal level=-79 dBm ESSID:"Xfinity300"
Quality=31/70  Signal level=-79 dBm ESSID:""
Quality=30/70  Signal level=-80 dBm ESSID:"xfinitywifi"
Quality=32/70  Signal level=-78 dBm ESSID:""
Quality=21/70  Signal level=-89 dBm ESSID:"NETGEAR11-5G-1"
Quality=49/70  Signal level=-61 dBm ESSID:"Bag End"
Quality=49/70  Signal level=-61 dBm ESSID:"The Shire" 


Scanning...

Quality=64/70  Signal level=-46 dBm ESSID:"Hobbiton"
Quality=44/70  Signal level=-66 dBm ESSID:"Xfinity300"
Quality=38/70  Signal level=-72 dBm ESSID:"xfinitywifi"
Quality=63/70  Signal level=-47 dBm ESSID:"Bag End"
Quality=31/70  Signal level=-79 dBm ESSID:"Wonderland2G"
Quality=31/70  Signal level=-79 dBm ESSID:"Xfinity300"
Quality=31/70  Signal level=-79 dBm ESSID:""
Quality=30/70  Signal level=-80 dBm ESSID:"xfinitywifi"
Quality=32/70  Signal level=-78 dBm ESSID:""
Quality=21/70  Signal level=-89 dBm ESSID:"NETGEAR11-5G-1"
Quality=49/70  Signal level=-61 dBm ESSID:"Bag End"
Quality=49/70  Signal level=-61 dBm ESSID:"The Shire"
Quality=43/70  Signal level=-67 dBm ESSID:"" 

...
```

