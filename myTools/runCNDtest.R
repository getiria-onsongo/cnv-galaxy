#!/usr/bin/env Rscript

options(warn=-1);

suppressPackageStartupMessages(library("MASS"));
suppressPackageStartupMessages(library("calibrate"));
suppressPackageStartupMessages(library("optparse"));
suppressPackageStartupMessages(library("plotrix"));
suppressPackageStartupMessages(library("zoo"));
suppressPackageStartupMessages(library("DBI"));
suppressPackageStartupMessages(library("RMySQL"));
source("CopyNumberDeletion.R");

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
make_option("--db_u", help="MySQL database username"),
make_option("--db_p", help="MySQL database password"),
make_option("--db_d", help="MySQL database to use"),
make_option("--db_h", help="MySQL host to use"),
make_option("--db_s", help="MySQL unix socket to use"),
make_option("--p", help="Use password to connect to MySQL")
)

# get command line options, if help option encountered print help and exit,
# otherwise if options not found on command line then set defaults,
opt <- parse_args(OptionParser(option_list=option_list))

m <- dbDriver("MySQL");

if(opt$p == 1){
  con <-dbConnect(m,username=opt$db_u,password=opt$db_p,dbname=opt$db_d,host=opt$db_h,unix.socket=opt$db_s);
}else{
  con <-dbConnect(m,username=opt$db_u,dbname=opt$db_d,host=opt$db_h,unix.socket=opt$db_s);	
}

# LOAD CONTROL PILEUPS
mysql_load_pileup(con,opt$c_name,opt$c_pileup,"pileup");
mysql_load_pileup(con,opt$c_name,opt$c_bwa,"bwa");
mysql_load_pileup(con,opt$c_name,opt$c_bowtie,"bowtie");
mysql_exon_bwa_bowtie(con,opt$c_name);

# LOAD SAMPLE PILEUPS
mysql_load_pileup(con,opt$s_name,opt$s_pileup,"pileup");
mysql_load_pileup(con,opt$s_name,opt$s_bwa,"bwa");
mysql_load_pileup(con,opt$s_name,opt$s_bowtie,"bowtie");
mysql_exon_bwa_bowtie(con,opt$s_name);

# RANDOMLY RETRIEVE 3 REFERENCES
mysql_create_reference_test(con,opt$s_name);

# ---------------------------------------- FIND REFERENCE COVERAGE (MEDIAN COVERAGE FOR REFERENCE EXON) FOR 11_05910_tso
s_cmec_input <- paste("cnv_",opt$s_name,"_exon_pileup",sep="");
s_cmec_ref <- paste(opt$s_name,"_3_random_ref",sep="");
s_cmec_out <- paste("cnv_",opt$s_name,"_exon_reference",sep="");
cnv_median_exon_coverage(con, s_cmec_input, s_cmec_ref, s_cmec_out, "exon_contig_id");

# ---------------------------------------- FIND REFERENCE COVERAGE (MEDIAN COVERAGE FOR REFERENCE EXON) FOR 07_2151_tso
c_cmec_input <- paste("cnv_",opt$c_name,"_exon_pileup",sep="");
c_cmec_out <- paste("cnv_",opt$c_name,"_exon_reference",sep="");
cnv_median_exon_coverage(con, c_cmec_input, s_cmec_ref, c_cmec_out, "exon_contig_id");

# -- ---------------------------------------- 11_05910_tso WITHING SAMPLE  ratio
mysql_within_sample(con,opt$s_name);

# -- ---------------------------------------- 07_2151_tso WITHING SAMPLE  ratio
mysql_within_sample(con,opt$c_name);

# -- COMPUTE SAMPLE RATIO
mysql_compute_ratio(con,opt$s_name,opt$c_name);

# -- ADD BOWTIE/BWA RATIO
mysql_add_bowtie_bwa(con,opt$s_name,opt$c_name);

# -- ADD GENE SYMBOL
mysql_add_gene_symbol(con,opt$s_name,opt$c_name);

# -- CREATE TABLE FOR SMOOTHED AND NORMALIZED DATA
mysql_create_norm_out_table(con,opt$s_name,opt$c_name);

# -- NORMALIZE DATA
#
norm_input <- paste("cnv_",opt$s_name,"_over_",opt$c_name,"_n_bowtie_bwa_ratio_gene",sep="");
norm_output <- paste("cnv_",opt$s_name,"_over_",opt$c_name,"_n_bowtie_bwa_ratio_gene_norm",sep="");
cnv_normalize(con,norm_input,norm_output);

# -- SMOOTH THE DATA
out_input <- paste("cnv_",opt$s_name,"_over_",opt$c_name,"_n_bowtie_bwa_ratio_gene_norm",sep="");
out_output <- paste("cnv_",opt$s_name,"_tso_over_",opt$c_name,"_n_bowtie_bwa_ratio_gene_out",sep="");
window_length <- 200;
cnv_smooth_coverages(con, out_input, out_output, window_length);

# -- SEPARATE DATA INTO RESPECTIVE REFERENCE EXONS
mysql_separate_ref(con,opt$s_name,opt$c_name);

# -- ADD WINDOW INFORMATION
mysql_add_window_info(con,opt$s_name,opt$c_name);

# FIND MEDIAN COVERAGE FOR EACH WINDOW
sample_table_name <- paste("cnv_",opt$s_name,"_over_",opt$c_name,"_60bp_exon_ref1",sep="");
output_table_name <- paste("cnv_",opt$s_name,"_over_",opt$c_name,"_60bp_exon_ref1_med",sep="");
cnv_median_window_coverage(con, sample_table_name, output_table_name);
sample_table_name <- paste("cnv_",opt$s_name,"_over_",opt$c_name,"_60bp_exon_ref2",sep="");
output_table_name <- paste("cnv_",opt$s_name,"_over_",opt$c_name,"_60bp_exon_ref2_med",sep="");
cnv_median_window_coverage(con, sample_table_name, output_table_name);
sample_table_name <- paste("cnv_",opt$s_name,"_over_",opt$c_name,"_60bp_exon_ref3",sep="");
output_table_name <- paste("cnv_",opt$s_name,"_over_",opt$c_name,"_60bp_exon_ref3_med",sep="");
cnv_median_window_coverage(con, sample_table_name, output_table_name);

# ADD GENE DATA
mysql_add_gene_data(con,opt$s_name,opt$c_name);

# COMPUTE WINDOW STATISTICS SUCH AS AVERAGE WINDOW COVERAGE
mysql_compute_window_stats(con,opt$s_name,opt$c_name);

# ADD WINDOW STATISTICS SUCH AS AVERAGE WINDOW COVERAGE
mysql_add_window_stats(con,opt$s_name,opt$c_name);

# ADD CONTROL STATISTICS SUCH AS AVERAGE WINDOW COVERAGE
# NOTE: WE WILL NEED THIS FOR FILTERING HOMOZYGIOUS DELETIONS. SUCH DELETIONS WON'T HAVE
#       AVG WINDOW COVERAGE OR OTHER STATISTICS BECAUSE THAT REGION HAS BEEN DELETED
mysql_add_control_stats(con,opt$s_name,opt$c_name);

# FILTER WINDOWS TO RETURN THOSE THAT MEET CERTAIN CRITERIA e.g., MIN_AVG_COV < 20 AND
# SEPARATE HETEROZYGOUS DELETIONS FROM HOMOZYGOUS DELETIONS
mysql_cnv_filter(con,opt$s_name,opt$c_name,0.3,0.7,0.85,1.1,20)

# SELECT CNVs THAT MEET THRESHOLD e.g., THREE CONSECUTIVE WINDOWS IN AT LEAST TWO EXONS
mysql_get_cnv(con,opt$s_name,opt$c_name);

# COMBINE CNVs AND COMPUTE SOME BASIC GENE STATS
mysql_combine_cnv(con,opt$s_name,opt$c_name,opt$platform)

# LOAD LIST OF ORDERED GENES
mysql_load_ordered_genes(con,opt$s_name, opt$ordered_genes);

# COMPUTE MEDIAN ABSOLUTE RESIDUAL VALUE. HOPING THIS WILL CAPTURE THE VISUAL VARIATION USED
# TO IDENTIFY FALSE POSITIVES
twice_seg_len <- 1000;
input_table <- paste("cnv_",opt$s_name,"_tso_over_",opt$c_name,"_n_bowtie_bwa_ratio_gene_out",sep="");
cnv_table <- paste(opt$s_name,"_tso_cnv",sep="");
cnv_lm_fit(con, input_table, cnv_table, twice_seg_len);

# ----------------------------------------------------- OUTPUT RESULTS
# RETRIEVE CNVs AND WRITE THEM TO A TEXT FILE
mysql_output_cnv(con, opt$s_name);

# RETRIVE RAW DATA FOR CNVs AND ORDERED GENES JUST INCASE GENETICIST WANTS TO LOOK AT THE DATA
mysql_get_raw_data(con, opt$s_name,opt$c_name);

# PLOT GENES WITH CNVS TOGETHER WITH ORDERED GENES IF THEY WERE NOT IDENTIFIED AS HAVING CNVs
width=23;
single_plot_height=2;
plot_cnv_and_ordered_genes(con, opt$s_name,opt$c_name,width,single_plot_height);

# ----------------------------------------------------- DELETE MySQL TABLES----------------------------- (UNCOMMENT LINE BELOW BEFORE PRODUCTION)
mysql_delete_tables(con,opt$s_name,opt$c_name);

# Disconnect from MySQL
dbDisconnect(con);