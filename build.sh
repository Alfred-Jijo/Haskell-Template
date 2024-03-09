#!/bin/bash

# Define the GHC command
ghc --make -isrc ./src/Main.hs -outputdir ./out

# Make the script executable
chmod +x build.sh