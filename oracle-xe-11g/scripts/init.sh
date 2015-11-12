#!/bin/sh

echo "Loading sql file"

cat /scripts/tables.sql | /u01/app/oracle/product/11.2.0/xe/bin/sqlplus system/oracle
