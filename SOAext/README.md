`CD` to correct directory  
  
`docker build -t bind9:SOAext ./`  
  
`docker image ls` > get imageID   
  
`docker run -d bind9:SOAext` > -d run in background  
  
`docker exec -u 0 -it mycontainer bash` > run docker in root  
  

command by publisher edited to fit needs:  
`docker run --name=bind9 --restart=always --publish 53:53/udp --publish 53:53/tcp --publish 127.0.0.1:953:953/tcp --volume /etc/bind --volume /var/cache/bind --volume /var/lib/bind --volume /var/log -d bind9:SOAext `
