# If Mac doesn't have wget
brew install wget

# Install packages
cd /Users/onson001/Desktop/apps

wget http://cran.r-project.org/src/contrib/MASS_7.3-40.tar.gz
R CMD INSTALL MASS_7.3-40.tar.gz

wget http://cran.r-project.org/src/contrib/calibrate_1.7.2.tar.gz
R CMD INSTALL calibrate_1.7.2.tar.gz

wget http://cran.r-project.org/src/contrib/optparse_1.3.0.tar.gz
R CMD INSTALL optparse_1.3.0.tar.gz

wget http://cran.r-project.org/src/contrib/plotrix_3.5-11.tar.gz
R CMD INSTALL plotrix_3.5-11.tar.gz

wget http://cran.r-project.org/src/contrib/DBI_0.3.1.tar.gz
R CMD INSTALL DBI_0.3.1.tar.gz

wget http://cran.r-project.org/src/contrib/RMySQL_0.10.2.tar.gz
R CMD INSTALL RMySQL_0.10.2.tar.gz
# NOTE: On a Mac, default installation does not put this lib where expected so create a symbolic link
sudo ln -s /usr/local/mysql/lib/libmysqlclient.18.dylib /usr/lib/libmysqlclient.18.dylib

wget http://cran.r-project.org/src/contrib/zoo_1.7-12.tar.gz
R CMD INSTALL zoo_1.7-12.tar.gz

cd /Users/onson001/Desktop/temp

db_h="localhost"
db_u="onson001"
db_p="masara15"
db_d="fairview_2013_09_25"

c_sample_name="07_2151";
c_pileup="/Users/onson001/Desktop/NGS/cnv/cnv-beta/galaxy-wrapper/test_cnv_07_2151_tso_pileup.txt"
c_bwa="/Users/onson001/Desktop/NGS/cnv/cnv-beta/galaxy-wrapper/test_cnv_07_2151_tso_bwa_pileup.txt"
c_bowtie="/Users/onson001/Desktop/NGS/cnv/cnv-beta/galaxy-wrapper/test_cnv_07_2151_tso_bowtie_pileup.txt"
sample_name="11_05910";
s_pileup="/Users/onson001/Desktop/NGS/cnv/cnv-beta/galaxy-wrapper/test_cnv_11_05910_tso_pileup.txt"
s_bwa="/Users/onson001/Desktop/NGS/cnv/cnv-beta/galaxy-wrapper/test_cnv_11_05910_tso_bwa_pileup.txt"
s_bowtie="/Users/onson001/Desktop/NGS/cnv/cnv-beta/galaxy-wrapper/test_cnv_11_05910_tso_bowtie_pileup.txt"
platform="TruSightOne";

ordered_genes="/Users/onson001/Desktop/NGS/cnv/cnv-beta/galaxy-wrapper/ordered_genes.txt"

script_path=/Users/onson001/Desktop/NGS/cnv/code/cnv-galaxy/myTools

Rscript $script_path/runCND.R  --c_name $c_sample_name --c_pileup $c_pileup --c_bwa $c_bwa --c_bowtie $c_bowtie \
--s_name $sample_name --s_pileup $s_pileup --s_bwa $s_bwa --s_bowtie $s_bowtie --platform $platform \
--ordered_genes $ordered_genes --db_h $db_h --db_u $db_u --db_p $db_p --db_d $db_d


-- ABOVE ARE MANUAL STEPS FOR IMPLEMNTING PACKAGES AND TESTING CODE. NEXT STEPS
1) CREATE DEPENDENCIES.XML
2) ADD script XML
3) ADD TO TOOLSHED




# CREATE R PACKAGE

setwd("/Users/onson001/Desktop/NGS/cnv/cnv-beta/src")

package.skeleton(name="CnvAnalysis", code_files="/Users/onson001/Desktop/NGS/cnv/cnv-beta/src/cnvAnalysis.R")

# Exit R and navigate to /Users/onson001/Desktop/NGS/cnv/cnv-beta/src
R CMD INSTALL cnvAnalysis

R CMD check cnvAnalysis

R CMD build cnvAnalysis

R CMD INSTALL cnvAnalysis_1.0.tar.gz
