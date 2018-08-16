#!/bin/bash
set -ex

apt-get update

REPOBASE=${REPOBASE-http://downloads.ortussolutions.com/debs}

echo "deb $REPOBASE/noarch /" >/etc/apt/sources.list.d/commandbox.list

# Change if PGP Key ID changes
# Also comment this out if you want to test the failure case (or remove the Release.gpg file from the repo)
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7D32E5396DA70622

apt-get update --no-allow-insecure-repositories

apt-cache policy commandbox

apt-get install -y --no-allow-insecure-repositories --no-install-recommends commandbox


