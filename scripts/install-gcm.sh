#!/bin/sh

curl -L https://aka.ms/gcm/linux-install-source.sh | sh -s -- -y
git-credential-manager configure
rm -f ./dotnet-install.sh