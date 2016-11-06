
##  Install readme service
cd /vagrant/infra/aglio/
docker build -t apibffp/aglio .

docker run -d --name aglio -p 10080:3000 -v /vagrant/ffp.apib:/ffp.apib \
    apibffp/aglio -i /ffp.apib -s

sudo cp /vagrant/infra/aglio/aglio.service /etc/systemd/system/
sudo systemctl enable aglio.service
sudo systemctl start aglio.service

