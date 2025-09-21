#! /bin/bash
set -euo pipefail
#This script clean temp files that have more than 7 days
#

days=${1:-7}

#Count the amount files into the /tmp
#countFiles=$(ls -l /tmp | wc -l)
#((countFiles -=  1))
countFiles=$(find /tmp -type f | wc -l)

#display the amount and files with more seven days
echo "El directorio /tmp actuamente tiene $countFiles archivos temporales"
echo "De los $countFiles estos archivos tienen mas de $days"
files=$(find /tmp -type f -mtime +$days)
echo $files

#Clean the files
echo "Se procede con la limpieza de los archivos.."
for file in $files
do
	rm $file
done



