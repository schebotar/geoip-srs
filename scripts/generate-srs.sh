#!/bin/bash

# Download the geoip.dat file
curl -L -o geoip.dat https://raw.githubusercontent.com/Loyalsoldier/geoip/release/geoip.dat

# Clone the geodat2srs repository
git clone https://github.com/runetfreedom/geodat2srs.git

# Change to the geodat2srs directory
cd geodat2srs

# Build the geodat2srs program
go build -o geodat2srs

# Generate the SRS rules for the Russian segment
./geodat2srs geoip -i ../geoip.dat -o ru --prefix "geoip-"

# Move the generated SRS file to the original directory
mv ru ../geoip-srs.rules

# Clean up
cd ..
rm -rf geodat2srs geoip.dat