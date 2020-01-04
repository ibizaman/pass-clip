#!/bin/bash

VERSION=$(git tag --list "v*" | tail -n1)

URL="https://github.com/ibizaman/pass-clip/archive/$VERSION.tar.gz"

SHA=$(curl --location --silent "$URL" | sha512sum | cut -d' ' -f1)

cd aur || exit 1

sed -i "s/sha512sums.*$/sha512sums=('$SHA')/" PKGBUILD || exit 1

makepkg --printsrcinfo > .SRCINFO || exit 1
