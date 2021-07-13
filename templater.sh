#! /bin/sh

FILE=/home/qumine/template/template.sh
if test -f "$FILE"; then
    echo "Executing template.sh"
    sh $FILE
fi

echo "Copying template"
cp -R /home/qumine/template/* /data