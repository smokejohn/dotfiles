#!/bin/bash

# Install tidal according to https://tidalcycles.org/docs/getting-started/linux_install

# add user to audio group
sudo usermod -a -G audio $USER

# install dependencies
sudo dnf install git-core qjackctl gcc-c++ cabal-install

# install supercollider
sudo dnf install supercollider
sudo dnf copr enable ycollet/audinux
sudo dnf install supercollider-sc3-plugins
sudo dnf copr disable ycollet/audinux

# install superdirt
SD_VERSION=$(
    git ls-remote https://github.com/musikinformatik/SuperDirt.git | \
    grep tags | \
    tail -n1 | \
    awk -F/ '{print $NF}'
)
FILE="./superdirt_install.scd"
echo -e "Quarks.checkForUpdates({Quarks.install(\"SuperDirt\", \""${SD_VERSION}\""); thisProcess.recompile()});\n0.exit;" > "$FILE"
sclang "$FILE"
rm "$FILE"

# install tidal via cabal
cabal update; cabal install tidal --lib
