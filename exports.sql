-- First create directory, give permissions & then do the export

Create directory my_dir as 'server_full_path';

GRANT read,write on my_dir to onlinestoredb;



expdp onlinestoredb/onlinestoredb_pwd directory=my_dir dumpfile=exp_dump.dmp logfile=exp_dump.log  INCLUDE=TABLE ;
