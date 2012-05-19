#!/bin/sh
rm bd_advjquery_archive.zip
zip -r bd_advjquery_archive.zip ./
scp bd_advjquery_archive.zip bakingdisasters.com:~/bakingdisasters.com/jqueryadvanced/bd_advjquery_archive.zip

ssh bakingdisasters.com 'mkdir ~/bakingdisasters.com/jqueryadvanced'
rsync -vaz ./baking-disasters bakingdisasters.com:~/bakingdisasters.com/jqueryadvanced/
rsync -vaz ./derby-gallery bakingdisasters.com:~/bakingdisasters.com/jqueryadvanced/

