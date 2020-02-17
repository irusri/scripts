#!/bin/bash
#update_annotation_gene.sh

DB_USER='root' #'your_db_username'
DB_PASS='root' #'your_password'
DB='my_genie_sys_database' #'database_name'

# USAGE sh update_annotation_gene_i.sh gene_go
display_usage() {
    echo "\nUsage:\n$0 [table_name] \n"
 }
#UPDATE $1 INNER JOIN transcript_info on transcript_info.transcript_id = $1.transcript_id SET $1.transcript_i = transcript_info.transcript_i;
#update transcript_info,$1 set $1.transcript_i=transcript_info.transcript_i where transcript_info.transcript_id=$1.transcript_id;
# if less than one arguments supplied, display usage
    if [ $# -le 0 ]
        then
           display_usage
             exit 1
    fi
count=$(mysql --host=localhost --user=$DB_USER --password=$DB_PASS --database=$DB -sse "SHOW COLUMNS FROM $1 LIKE 'transcript_id';")
if [ ${#count} -gt 0 ]
then
    mysql --host=localhost --user=$DB_USER --password=$DB_PASS --local_infile=1 --database=$DB << EOFMYSQL
UPDATE $1 INNER JOIN transcript_info on transcript_info.transcript_id = $1.transcript_id SET $1.transcript_i = transcript_info.transcript_i;
EOFMYSQL
else
    mysql --host=localhost --user=$DB_USER --password=$DB_PASS --local_infile=1 --database=$DB << EOFMYSQL
UPDATE $1 INNER JOIN transcript_info on transcript_info.gene_id = $1.gene_id SET $1.gene_i = transcript_info.gene_i;
EOFMYSQL
fi


