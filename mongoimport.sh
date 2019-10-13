#!/bin/bash

echo "TODO: move this file to mongo_dump directory where are bson files"

set -xev  # halt script on error

db_name="my_mongo_db"

for file in *.bson
do
	filename="${file%.*}"
	echo "$filename"
    mongorestore -d "$db_name" -c "$filename" "$file"
done
