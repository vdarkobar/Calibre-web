# Calibre-Web
### Web interface for browsing, reading and downloading eBooks.
  
---
  
*This app requires you to have an existing Calibre database at the /books location*.
  
#### *Decide what you will use for*:
```
Time Zone, PUID/PGID (id <user>),
Calibre-web Port Number.
```
  
### *Run this command*:
```
RED='\033[0;31m'; echo -ne "${RED}Enter directory name: "; read DIR; \
mkdir -p "$DIR"; cd "$DIR" && git clone https://github.com/vdarkobar/Calibre-web . && \
chmod +x setup.sh && \
./setup.sh
```
  
Visit your *server local ip* + *port* designated during setup:
```
http://<LocalIP>:<PORT>
```
  
### Log:
```
sudo docker-compose logs calibre-web
sudo docker logs -tf --tail="50" calibre-web
```
