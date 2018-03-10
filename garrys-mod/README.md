# Garry's Mod

### Build the image
```
docker build -t yourname/garrysmod .
```

### Run the image
```
docker run --name garrysmod-server -t -i -e "MAXPLAYERS=12" -e "GAMEMODE=sandbox" -e "COLLECTION=XXXXXXXXX" -e "MAP=gm_flatgrass" -p 27015:27015/udp yourname/garrysmod
```

### Customize startup routine
To customize the servers startup routine modify the [start-server.sh](https://github.com/bene/docker-games/blob/master/garrys-mod/content/start-server.sh) file before you build the image.
