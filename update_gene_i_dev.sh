#update_gene_i_dev.sh script
#!/bin/bash
#update_gene_i_dev.sh

DB_USER='root' #'your_db_username'
DB_PASS='root' #'your_password'
DB='my_genie_sys_database' #'database_name'

#USAGE: sh update_gene_i_dev.sh

mysql --host=localhost --user=$DB_USER --password=$DB_PASS --local_infile=1 --database=$DB <<EOFMYSQL
update transcript_info,gene_info set transcript_info.gene_i=gene_info.gene_i where gene_info.gene_id=transcript_info.gene_id;
EOFMYSQL