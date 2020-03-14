#!/bin/bash
set -e

source conflist.sh

CONF_DIR=/etc/dnsmasq-china-list/template

echo "Downloading latest configurations..."
for _conf in "${CONF_WITH_SERVERS[@]}"; do
        wget -P $CONF_DIR https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/$_conf.conf
done
for _conf in "${CONF_SIMPLE[@]}"; do
        wget -P $CONF_DIR https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/$_conf.conf
done

echo "Download finished. All conf saved to "$CONF_DIR"."
