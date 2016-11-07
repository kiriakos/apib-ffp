
##  Install readme service
cd /vagrant/infra/drakov/
docker build -t apibffp/drakov .

docker run -d --name drakov -p 10180:3000 -v /vagrant:/ffp \
    apibffp/drakov -f /ffp/ffp.apib --watch

cp /vagrant/infra/drakov/*.service /etc/systemd/system/
systemctl enable drakov.service
systemctl start drakov.service

