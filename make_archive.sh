#!/bin/sh

PROJECT=ptex-texmf
TMP=/tmp
PREFIX=$PROJECT-`date '+%y%m%d%H%M%S'`

git archive --format=tar --prefix=$PREFIX/ HEAD | (cd $TMP && tar xf -)
rm $TMP/$PREFIX/make_archive.sh
echo " * Preprocess: iconv -f UTF-8 -t ISO-2022-JP"
for f in `find $TMP/$PREFIX | sort`; do
    if file $f | fgrep -q 'text' ; then
        iconv -f UTF-8 -t ISO-2022-JP $f > $f.conv
        mv $f.conv $f
        echo "iconv: $f"
    fi
done

echo
echo " * Create $PREFIX.tar.gz"

PWDF=`pwd`
cd $TMP && tar zcfv $PWDF/$PREFIX.tar.gz $PREFIX/*
rm -rf $TMP/$PREFIX
echo
echo " * Done: $PREFIX.tar.gz"
