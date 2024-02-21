#!/bin/bash

BASE_DIR=~/Desktop
LAB_DIR="YAVUZ"

echo "Creating YAVUZ directory in $LABDIR"
mkdir -p "$BASE_DIR/$LAB_DIR"



sudo apt-get update
sudo apt-get install --no-upgrade curl -y

echo "Installing Code - OSS"

echo "Downloading Code - OSS"
cd "$BASE_DIR/$LAB_DIR" && \
curl -Ls https://github.com/toolboc/vscode/releases/download/1.32.3/code-oss_1.32.3-arm64.deb \
     -o code-oss_1.32.3-arm64.deb && \
sudo dpkg -i code-oss_1.32.3-arm64.deb && \
rm -f code-oss_1.32.3-arm64.deb


echo "Installing miniconda"

mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

~/miniconda3/bin/conda init bash



echo "Finished Setup"

