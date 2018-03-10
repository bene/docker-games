FROM i386/ubuntu:xenial

# Install wget
RUN apt-get update
RUN apt-get install -y wget

WORKDIR /root/Steam

# Intstall Steam
RUN wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
RUN tar -xvzf steamcmd_linux.tar.gz

# Install Gmod
RUN ./steamcmd.sh +login anonymous +force_install_dir ../gmodds +app_update 4020 validate +quit

# Set workdir
WORKDIR /root/gmodds

# Set env
ENV MAXPLAYERS="16"
ENV G_HOSTNAME="Garry's Mod"
ENV GAMEMODE="sandbox"
ENV MAP="gm_construct"
ENV COLLECTION=""

# Add start script
ADD content/start-server.sh start-server.sh

# Expose ports
EXPOSE 26901/udp
EXPOSE 27005/udp
EXPOSE 27015
EXPOSE 27015/udp
EXPOSE 27020/udp

# Set cmd
CMD [ "/bin/sh", "./start-server.sh" ]
