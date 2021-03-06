#!/bin/bash
HOME=/home/nomachine
echo -e "\n------------------ copy desktop shortcuts----------------"
mkdir -p /home/nomachine/Desktop
cp /bliss_demo/bliss/*.desktop /home/nomachine/Desktop/
tar -xzf /bliss_demo/assets/160115-bDMZT.tar.gz -C /tmp/
cp -r /tmp/bDMZT/* /usr/share/icons/
echo -e "\n------------------ start activate conda----------------"
cd /bliss/
source /opt/conda/bin/activate demoenv
echo -e "\n------------------ start beacon----------------"
python demo/start_demo_servers.py 

