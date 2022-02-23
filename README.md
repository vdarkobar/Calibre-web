# Calibre-Web
### Web interface for browsing, reading and downloading eBooks.
  
---
  
*This app requires you to have an existing Calibre database at the /books location*.
  
#### *Decide what you will use for*:
```
Time Zone nad Calibre-web Port Number.
PUID/PGID (id <user>)
```
  
### *Run this command*:
```
RED='\033[0;31m'; echo -ne "${RED}Enter directory name: "; read DIR; \
mkdir -p "$DIR"; cd "$DIR" && git clone https://github.com/vdarkobar/npm.git . && \
chmod +x setup.sh && \
./setup.sh
```
  
Visit your *server local ip* + *port* designated during setup:
```
http://<LocalIP>:<PORT>
```
