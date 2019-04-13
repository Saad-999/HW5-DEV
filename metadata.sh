#!/bin/bash

# assign variables

version=0.1.0


function show_help(){

cat <<EOF

Usage: ${0} -c|--create or ${0} -v|--version

EOF

}

function create_file1() {

touch "rds-message.txt"

nc -vz ecotech-db1.cpcimawiv5zb.us-east-1.rds.amazonaws.com 3306 >> rds-message.txt

}

function create_file2() {

curl http://169.254.169.254/latest/dynamic/instance-identity/document/ > ecoweb1-identity.json
}


function show_version() {

echo "$version" 

}




ACTION=${1}

case "$ACTION" in
	-c|--create)
		create_file1
		create_file2
;;
	-v|--version)
		show_version
;;
	*) show_help
	   exit 1


esac



