#!/bin/sh

rm -rf ~/tmp/swidow
git -C ~/tmp clone https://github.com/gauloish/swidow.git
sh ~/tmp/swidow/install.sh -c -black