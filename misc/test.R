#!/usr/bin/env Rscript

suppressPackageStartupMessages(library("optparse"));
suppressPackageStartupMessages(library("RMySQL"));
suppressPackageStartupMessages(library("calibrate"));
suppressPackageStartupMessages(library("plotrix"));
suppressPackageStartupMessages(library("zoo"));


option_list <- list(
make_option("--c_name", help="Control sample name"),
make_option("--c_pileup", help="Pileup with coverage information for the control sample"),
make_option("--c_bwa", help="Pileup with coverage information for the control sample when using BWA"),
make_option("--c_bowtie", help="Pileup with coverage information for the control sample when using Bowtie"),
make_option("--s_name",  help="Sample name"),
make_option("--s_pileup", help="Pileup with coverage information for the sample"),
make_option("--s_bwa",  help="Pileup with coverage information for the sample when using BWA"),
make_option("--s_bowtie", help="Pileup with coverage information for the sample when using Bowtie"),
make_option("--platform", help="ReSequencing Panel e.g., TruSightOne"),
make_option("--ordered_genes", help="One column text file with list of ordered gene. One gene per row"),
make_option("--plot_path", help="Path to location where plots will be saved"),
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

get_data_str <- paste("select * from test;",sep="");
data <- dbGetQuery(con, get_data_str);
print(data)

dbDisconnect(con)
