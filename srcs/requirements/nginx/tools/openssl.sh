#!/bin/sh

openssl genrsa -out seojo.42.fr.key

openssl req -x509 -new -nodes -sha256 -key seojo.42.fr.key -days 30 -subj "/C=KR/ST=Seoul/L=Gangnamgu/O=42Seoul/CN=seojo.42.fr" -out seojo.42.fr.crt

#openssl x509 -in seojo.42.fr.crt -text
