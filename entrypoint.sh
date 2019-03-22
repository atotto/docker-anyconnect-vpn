#!/bin/sh
( echo $ANYCONNECT_PASSWORD ) | openconnect $ANYCONNECT_SERVER --servercert $ANYCONNECT_FINGERPRINT --user=$ANYCONNECT_USER --timestamp --no-dtls
