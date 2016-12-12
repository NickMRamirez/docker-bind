Build it:

```
sudo docker build -t nramirez/bind -f ./Dockerfile .
```

Run it:

```
sudo docker run -d -p 127.0.0.1:53:53/udp --name dns1 -v ~/docker/bind/test/custom:/etc/bind/named.conf.custom-zones -v ~/docker/bind/test/db.test.com:/etc/bind/db.test.com -v ~/docker/bind/test/db.172.18:/etc/bind/db.172.18 nramirez/bind
```

Query it:

```
dig @localhost test.com -p 3353

nslookup -port=3353 test.com localhost
```