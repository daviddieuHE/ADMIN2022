#sudo docker-compose up --detach
sudo docker run -d --name=PostFixDovecot --hostname mail.l1-1.ephec2022.fr  --restart=always --publish 143:143/tcp --publish 465:465/tcp --publish 587:587/tcp --publish 993:993/tcp mail:postfixdovecot

