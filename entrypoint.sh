#!/bin/sh
( echo $ANYCONNECT_PASSWORD ) | openconnect  --servercert $ANYCONNECT_SERVER_CERT $ANYCONNECT_SERVER --user=$ANYCONNECT_USER --timestamp
