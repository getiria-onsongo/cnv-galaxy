#!/usr/bin/env Rscript


suppressPackageStartupMessages(library("RMySQL"));
suppressPackageStartupMessages(library("optparse"));

# suppressPackageStartupMessages(library("CopyNumDeletion"));
source("/Users/onson001/Desktop/NGS/cnv/cnv-beta/src/CopyNumDeletion.R");

option_list <- list(
make_option("--c_name", help="Control sample name"),
make_option("--s_name",  help="Sample name"),
make_option("--db_u", help="MySQL database username"),
make_option("--db_p", help="MySQL database password"),
make_option("--db_d", help="MySQL database to use"),
make_option("--db_h", help="MySQL host to use")
)

# get command line options, if help option encountered print help and exit,
# otherwise if options not found on command line then set defaults,
opt <- parse_args(OptionParser(option_list=option_list))

m <- dbDriver("MySQL");
con <-dbConnect(m,username=opt$db_u,password=opt$db_p,dbname=opt$db_d,host=opt$db_h);


# DELETE MySQL TABLES
mysql_delete_tables(con,opt$s_name,opt$c_name);

dbDisconnect(con)
