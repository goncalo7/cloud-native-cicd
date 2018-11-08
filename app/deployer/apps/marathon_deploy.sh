#!/bin/bash
[ $# -ne 2 ] && { echo "Usage: $0 application_name environment"; exit 1; }

#Change to project directory
cd $1
#Create a backup file from template
cp $1.json $1.json.bak

#Replace template file with values from cfg file
while read -r line; do
	VAR=$(cut -d\= -f1 <<< $line)
	VALUE=$(cut -d \= -f2 <<< $line)

	if [ $VAR = "MARATHON_ENDPOINT" ]; then
		MARATHON_ENDPOINT=$VALUE
	fi

	sed -i.bck s-$VAR-$VALUE-g $1.json

	done < $2.cfg


echo "-------------- Generated app json file --------------"
cat $1.json

#Deploy on Marathon
echo "-------------- Deploying on Marathon: --------------"

curl -X PUT -H 'Content-Type: application/json' -d "@$1.json" http://$MARATHON_ENDPOINT/v2/apps/$1

#Cleanup tmp files
mv $1.json.bak $1.json
rm $1.json.bck
cd ..

