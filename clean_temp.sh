#! /bin/bash
#
#This script clean temp files that have more than 7 days
#

days=${1:-7}
echo $days
countFiles=$(ls -l /tmp | wc -l)
((countFiles -=  1))
echo "El directorio /tmp actuamente tiene $countFiles archivos temporales"
find /tmp -type f -mtime +$days
