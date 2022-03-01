<p align="left">
  <a href="https://github.com/vdarkobar/home-cloud">Home</a>
  <br><br>
</p> 
  
# Calibre-Web
*Web interface for browsing, reading and downloading eBooks.*
  
---
  
Login to <a href="https://dash.cloudflare.com/">CloudFlare</a>, add *Subdomain* for your *Calibre-Web*. 
```
    CNAME | subdomain | @ (or example.com)
```
  
*This app requires you to have an existing Calibre database at the /books location*.  
*If needed, after copying library, set ownership of the /books folder (Database not writable).*
```
sudo chown -R user:group folder/
```
  
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
