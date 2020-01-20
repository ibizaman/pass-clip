#!/bin/bash

cd aur || exit 1

# From pacman-contrib
updpkgsums

makepkg --printsrcinfo > .SRCINFO || exit 1
