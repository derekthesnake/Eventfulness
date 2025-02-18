#!/bin/bash

apt update
apt install libtinfo5
bash createCondaEnv.sh
mkdir -p ../data/val/clips
wget https://www.cs.cornell.edu/abe/projects/eventfulness/static/videos/foley/basketball_expt.mp4 -P ../data/val/clips
wget https://www.cs.cornell.edu/abe/projects/eventfulness/static/data/checkpoints.tar -P ..
tar -C .. -xf ../checkpoints.tar
