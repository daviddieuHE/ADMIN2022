`CD` to correct directory  
  
`sudo docker build -t bind9:SOAext ./`  
  
`sudo docker image ls` > get imageID   
  
`sudo docker run -d bind9:SOAext` > -d run in background  
  
`sudo docker exec -u 0 -it mycontainer bash` > run docker in root  
  

Start container command  
`sudo docker run --name=SOAext --restart=always --publish 53:53/udp --publish 53:53/tcp --publish 127.0.0.1:953:953/tcp --volume /etc/bind --volume /var/cache/bind --volume /var/lib/bind --volume /var/log bind9:SOAext `
