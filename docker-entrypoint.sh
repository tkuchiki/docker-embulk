#!/bin/sh

if [ -f /opt/embulk/plugins.txt ]; then
    for plugin in `cat /opt/embulk/plugins.txt`; do
        java -jar /opt/embulk/embulk.jar gem install $plugin
    done
fi

exec java -jar /opt/embulk/embulk.jar "${@}"
