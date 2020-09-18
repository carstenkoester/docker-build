#!/bin/sh

rm -f /var/run/lock/*
exec olad -l 3 -c /etc/olad -i 0.0.0.0
