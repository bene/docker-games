#!/bin/bash
echo "Starting Garry’s Mod server.."
./srcds_run -game garrysmod -norestart +maxplayers ${MAXPLAYERS} +hostname "${G_HOSTNAME}" +gamemode ${GAMEMODE} "${ARGS}" +map ${MAP} +host_workshop_collection ${COLLECTION}
exit
