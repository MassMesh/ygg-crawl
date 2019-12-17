#!/bin/bash

sudo ./yggdrasilctl -v -json getdht # get bootstrap peers

# ping peer from bootstrap list
sudo ./yggdrasilctl -v -json dhtping box_pub_key="520f712d2f1b56d2e5c1ad5a4a010ee35c5378a10ad49a889d9d81977940bd47" coords="[2 27 25 24]"

# ping peer to get new list
sudo ./yggdrasilctl -v -json dhtping box_pub_key="640834eb3323d1bee9cb6bbeac4362ad6dc434f4a81a4cd764484da4de451d4f" coords="[2 2 16]"
