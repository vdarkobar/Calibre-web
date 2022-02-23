#!/bin/bash
clear
echo -ne "${RED}Enter Time Zone: "; read TZONE; \
echo -ne "${RED}Enter PUID: "; read PUID; \
echo -ne "${RED}Enter PGID: "; read PGID; \
echo -ne "${RED}Enter Calibre-web Port Number (8083): "; read CPORT; \
sed -i "s|01|${TZONE}|" .env && \
sed -i "s|02|${PUID}|" .env && \
sed -i "s|03|${PGID}|" .env && \
sed -i "s|04|${CPORT}|" .env && \
rm README.md && \
rm books/tmp && \
rm config/tmp && \
while true; do
    read -p "Execute 'docker-compose up -d' now? (y/n)" yn
    case $yn in
        [Yy]* ) sudo docker-compose up -d; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
