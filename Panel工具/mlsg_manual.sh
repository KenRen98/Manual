#!/bin/sh

# Define colors
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Define absolute paths
HOME_DIR="$HOME"
REPO_DIR="$HOME_DIR/MLSG-Chinese-Guide-and-Manual-for-Server-Admins-Please-READ-ME"
REPO_MAIN_DIR="$HOME_DIR/Manual-deploy"

echo -e "${BLUE}-------------------------------------------------${NC}"
echo -e "${GREEN}Starting the MLSG Installation...${NC}"
echo -e "${BLUE}-------------------------------------------------${NC}"

# Change to home directory
cd $HOME_DIR

# Check OS and install 7z if necessary
if grep -q 'Alpine Linux' /etc/os-release; then
    echo -e "${YELLOW}Detected Alpine Linux. Installing p7zip...${NC}"
    apk add --no-cache p7zip
elif grep -q 'Debian' /etc/os-release; then
    echo -e "${YELLOW}Detected Debian. Downloading 7zz...${NC}"
    curl -sSL -o 7zz https://github.com/Mr-Leaves-Server-Group/Manual/raw/deploy/Panel%E5%B7%A5%E5%85%B7/7zz
    chmod +x 7zz
    apt update && apt install -y convmv
elif grep -q 'Oracle Linux' /etc/os-release; then
    echo -e "${YELLOW}Detected Oracle Linux. Installing p7zip...${NC}"
    dnf install -y p7zip convmv
else
    # Download 7zz directly
    echo -e "${YELLOW}Downloading 7zz for Backup...${NC}"
    curl -sSL -o 7zz https://github.com/Mr-Leaves-Server-Group/Manual/raw/deploy/Panel%E5%B7%A5%E5%85%B7/7zz
    chmod +x 7zz
fi

echo -e "${YELLOW}Current system language: $LANG${NC}"
LANG=C
echo -e "${YELLOW}Setting language to: $LANG${NC}"

echo -e "${YELLOW}Downloading the ZIP file of the repository...${NC}"
curl -sSL -o MLSG-Manual.zip https://github.com/Mr-Leaves-Server-Group/Manual/archive/refs/heads/deploy.zip

echo -e "${YELLOW}Extracting the ZIP file...${NC}"
rm -rf $REPO_DIR
rm -rf $REPO_MAIN_DIR
if ! command -v 7z > /dev/null; then
    echo -e "${YELLOW}Using downloaded 7zz for extraction...${NC}"
    ./7zz x MLSG-Manual.zip -o$HOME_DIR -aoa
else
    echo -e "${YELLOW}Using system 7z for extraction...${NC}"
    7z x MLSG-Manual.zip -o$HOME_DIR -aoa
fi

convmv -f GBK -t utf8 --notest -r .

echo -e "${YELLOW}Moving files to the desired location...${NC}"
mkdir MLSG-Chinese-Guide-and-Manual-for-Server-Admins-Please-READ-ME
mv $REPO_MAIN_DIR/* $REPO_DIR/
rm -rf $REPO_MAIN_DIR
rm -rf "$REPO_DIR/Panel工具"
rm "$REPO_DIR/LICENSE"
rm "$REPO_DIR/README.md"

echo -e "${YELLOW}Cleaning up...${NC}"
rm MLSG-Manual.zip
[ -f 7zz ] && rm $HOME_DIR/7zz

echo -e "${BLUE}-------------------------------------------------${NC}"
echo -e "${GREEN}MLSG - Manual Installed${NC}"
echo -e "${BLUE}-------------------------------------------------${NC}"
