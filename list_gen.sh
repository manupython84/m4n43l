#!/bin/bash



# noombre del archivo que contiene los datos

file="data.txt"



# nombre del archivo m3u a generar

m3u_file="trojan.m3u"



# borrar el archivo m3u si ya existe

if [ -e "$m3u_file" ]; then

    rm "$m3u_file"

fi



# extraer los enlaces y los nombres de los canales con grep

grep -oE 'acestream://[^\"]+|\">[^<]+' "$file" | sed 's/\">//g' | while read -r line

do

    # si la línea comienza con acestream://, entonces es un enlace

    if [[ "$line" == acestream://* ]]; then

        # guardar el enlace en la variable link

        link="$line"

    # si no, entonces es el nombre del canal

    else

        # guardar el nombre del canal en la variable name

        name="$line"

        # escribir la línea en el archivo m3u

        echo "#EXTINF:-1,$name" >> "$m3u_file"

        echo "$link" >> "$m3u_file"

    fi

done



echo "El archivo m3u se ha generado correctamente."
