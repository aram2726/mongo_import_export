#!/bin/bash

set -xev  # halt script on error

if [!$1]; then
        echo " Example of use: $0 database_name [dir_to_store]"
        exit 1
fi

db_name=$1  # argv 1
output_dir=$2  # argv 2

if [!$output_dir]; then
        output_dir="./"
else
        mkdir -p $output_dir
fi

temp_file="fadlfhsdofheinwvw.js"

echo "print('_ ' + db.getCollectionNames())" > $temp_file

collections=`mongo $db_name $temp_file | grep '_' | awk '{print $2}' | tr ',' ' '`

for collection in $collections
do
    mongoexport -d $db_name -c $collection -o "$output_dir/${collection}.json" --jsonArray
done

rm $temp_file
