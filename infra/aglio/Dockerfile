FROM node:0.12.7

# Install Aglio
RUN npm install -g aglio@2.2.1
COPY aglio-docker-ip.sh /usr/bin/
RUN chmod +x /usr/bin/aglio-docker-ip.sh

EXPOSE 3000
ENTRYPOINT ["/usr/bin/aglio-docker-ip.sh"]

