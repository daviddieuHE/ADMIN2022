#sudo docker-compose up --detach
sudo docker run -d --name=TestMail --hostname mail  --restart=always --publish 143:143/tcp --publish 465:465/tcp --publish 587:587/tcp --publish 127.0.0.1:993:993/tcp test:mail

