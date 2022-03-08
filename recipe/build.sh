#!/bin/bash
FONT_DIR=$PREFIX/fonts
FONT_CONFIG_DIR=$PREFIX/etc/fonts/config.d


mkdir -p $FONT_DIR || true
mkdir -p $FONT_CONFIG_DIR || true

install -v -m644 ./ttf/*.ttf ${PREFIX}/fonts

# Make sure font configuration files are installed
for CONFIG in ./fontconfig/*.conf;
do
  install -v -m644 $CONFIG $FONT_CONFIG_DIR
done

