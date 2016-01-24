#!/bin/sh

PROJECT=ptex-texmf
TMP=/tmp
PREFIX=$PROJECT-`date '+%y%m%d%H%M%S'`

git archive --format=tar --prefix=$PREFIX/ HEAD | (cd $TMP && tar xf -)
rm $TMP/$PREFIX/make_archive.sh

echo " * Create $PREFIX.tar.gz"

PWDF=`pwd`
cd $TMP && tar zcfv $PWDF/$PREFIX.tar.gz $PREFIX/*
rm -rf $TMP/$PREFIX
echo
echo " * Done: $PREFIX.tar.gz"
