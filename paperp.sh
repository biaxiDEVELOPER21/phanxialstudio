#!/bin/bash
# Auto Install WordPress on Debian 12 (Apache2 + PHP-FPM + MariaDB)

set -e

echo "=== Updating system ==="
apt update && apt upgrade -y

echo "=== Installing gets ==="
apt install -y unzip curl wget lsb-release ca-certificates apt-transport-https

echo "=== Installing java 17 ==="
apt install -y openjdk-17-jdk

echo "=== Installing MariaDB ==="
mkdir -p /opt/minecraft
chmod 777 /opt/minecraft

echo "=== GET MOHIST ==="
cd /opt/minecraft
wget https://fill-data.papermc.io/v1/objects/2ae6ae22adf417699746e0f89fc2ef6cb6ee050a5f6608cee58f0535d60b509e/paper-1.21.5-114.jar
mv paper-1.21.5-114.jar 1.21.5

echo "=== setup ==="
java -Xms2G -Xmx2g -jar 1.21.5
true



echo "=== INSTALLATION COMPLETE ==="
echo "========================================="
echo "Minecraft Pack for debian 12 By Phanxial.studio installed successfully!"
echo "For start the server you can use the command:"
echo "java -Xms4G -Xmx4G -jar download"
echo "have a nice day!"
echo "========================================="
