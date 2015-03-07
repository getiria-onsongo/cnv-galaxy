
cd /Users/onson001/Desktop/NGS/cnv/cnv-beta/test

c_sample_name="07_2151";
c_pileup="/Users/onson001/Desktop/galaxy-wrapper/test_cnv_07_2151_tso_pileup.txt"
c_bwa="/Users/onson001/Desktop/galaxy-wrapper/test_cnv_07_2151_tso_bwa_pileup.txt"
c_bowtie="/Users/onson001/Desktop/galaxy-wrapper/test_cnv_07_2151_tso_bowtie_pileup.txt"

sample_name="11_05910";
s_pileup="/Users/onson001/Desktop/galaxy-wrapper/test_cnv_11_05910_tso_pileup.txt"
s_bwa="/Users/onson001/Desktop/galaxy-wrapper/test_cnv_11_05910_tso_bwa_pileup.txt"
s_bowtie="/Users/onson001/Desktop/galaxy-wrapper/test_cnv_11_05910_tso_bowtie_pileup.txt"
platform="TruSightOne";

# ordered_genes="/Users/onson001/Desktop/NGS/cnv/cnv-pre-beta/tso_launcher/11_05910/ordered_genes.txt"
ordered_genes="/Users/onson001/Desktop/NGS/cnv/ordered.txt"

db_h="localhost"
db_u="onson001"
db_p="masara15"
db_d="fairview_2013_09_25"

./CopyNumberDeletion.R  --c_name $c_sample_name --c_pileup $c_pileup --c_bwa $c_bwa --c_bowtie $c_bowtie --s_name $sample_name --s_pileup $s_pileup --s_bwa $s_bwa --s_bowtie $s_bowtie --platform $platform --ordered_genes $ordered_genes --db_h $db_h --db_u $db_u --db_p $db_p --db_d $db_d

./test_run_main.R --c_name $c_sample_name --s_name $sample_name --out_dir $out_dir --db_h $db_h --db_u $db_u --db_p $db_p --db_d $db_d

out_dir="/Users/onson001/Desktop"

./plot.R --c_name $c_sample_name --s_name $sample_name --ordered_genes $ordered_genes --out_dir $out_dir --db_h $db_h --db_u $db_u --db_p $db_p --db_d $db_d



# CREATE R PACKAGE

setwd("/Users/onson001/Desktop/NGS/cnv/cnv-beta/src")

package.skeleton(name="CopyNumDeletion", code_files="/Users/onson001/Desktop/NGS/cnv/cnv-beta/src/CopyNumDeletion.R")

R CMD INSTALL CopyNumDeletion

R CMD check CopyNumDeletion

R CMD build CopyNumDeletion

R CMD INSTALL CopyNumDeletion_1.0.tar.gz

# -- MISC

 rtest2.r --outdir="/Users/onson001/Desktop/NGS/cnv/cnv-beta/misc/test_dir" --htmlfile="test.html"

m <- dbDriver("MySQL");
con <-dbConnect(m,username="onson001",password="masara15",dbname="fairview_2013_09_25",host="localhost");

source("/Users/onson001/Desktop/NGS/cnv/cnv-beta/src/CopyNumDeletion.R");
twice_seg_len <- 1000;
input_table <- paste("cnv_11_05910_tso_over_07_2151_n_bowtie_bwa_ratio_gene_out",sep="");
cnv_table <- paste("11_05910_tso_cnv",sep="");
cnv_lm_fit(con, input_table, cnv_table, twice_seg_len);


