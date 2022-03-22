`CD` to correct directory  
`docker build -t custom/img:bind9resolver ./`  
`docker image ls` > get imageID `docker run -d imageID` > -d run in background  
`docker exec -u 0 -it mycontainer bash` > run docker in root  
`docker run -d --name bind9 -p 53:53 -p 53:53/udp -v /absolute/path/named.conf:/etc/bind/named.conf -v /absolute/path/exemple.com.db:/etc/bind/exemple.com.db bind9:SOAext` = recommended  
command by publisher. Works fine with what is in the dockerfile To run newest version: 
`docker run --name=bind9 --restart=always --publish 53:53/udp --publish 53:53/tcp --publish 127.0.0.1:953:953/tcp --volume /etc/bind --volume /var/cache/bind --volume /var/lib/bind --volume /var/log -d bind9:soaext 
