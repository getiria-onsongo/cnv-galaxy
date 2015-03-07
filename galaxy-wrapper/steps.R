# PILEUP TEST DATA FOR TESTING THE PIPELINE WILL BE GENERATED FROM SAMPLE 11-05910
 
# Reference exons
chr13:23904274-23915829 (SACS)
chr13:32910401-32915333 (BRCA2)
chr6:152655142-152655408 (SYNE1)

# Genes with CNVs called

EXO5
FANCC
KIR2DL3
MC3R
MKRN3
SERPINB11
SIGMAR1
SULT1A1
DMBT1 

# Genes with no deletions
GIF
RHAG
SULT1E1
AURKA
ATG16L1
CSNK2A2
ABHD5
COQ5
EIF2B1
CYP4B1
CD38
TPM1

(24 genes)

CREATE TABLE test_tso_exon_contig_pileup AS
SELECT * FROM tso_exon_contig_pileup WHERE 
gene_symbol = 'SACS' OR gene_symbol = 'BRCA2' OR gene_symbol = 'SYNE1' OR gene_symbol = 'EXO5' OR gene_symbol = 'FANCC' OR gene_symbol = 'KIR2DL3' OR 
gene_symbol = 'MC3R' OR gene_symbol = 'MKRN3' OR gene_symbol = 'SERPINB11' OR gene_symbol = 'SIGMAR1' OR gene_symbol = 'SULT1A1' OR gene_symbol = 'DMBT1 ' OR 
gene_symbol = 'GIF' OR gene_symbol = 'RHAG' OR gene_symbol = 'SULT1E1' OR gene_symbol = 'AURKA' OR gene_symbol = 'ATG16L1' OR gene_symbol = 'CSNK2A2' OR 
gene_symbol = 'ABHD5' OR gene_symbol = 'COQ5' OR gene_symbol = 'EIF2B1' OR gene_symbol = 'CYP4B1' OR gene_symbol = 'CD38' OR gene_symbol = 'TPM1';
CREATE INDEX test_tso_exon_contig_pileup_i1 ON test_tso_exon_contig_pileup(chr,pos);

mysql --skip-column-names -h mysql -u onson001 -p2PeEC8hMU NGS_dev < get_11_05910_exon_pileup.sql > test_cnv_11_05910_tso_pileup.txt
mysql --skip-column-names -h mysql -u onson001 -p2PeEC8hMU NGS_dev < get_11_05910_exon_bwa.sql > test_cnv_11_05910_tso_bwa_pileup.txt
mysql --skip-column-names -h mysql -u onson001 -p2PeEC8hMU NGS_dev < get_11_05910_exon_bowtie.sql > test_cnv_11_05910_tso_bowtie_pileup.txt

mysql --skip-column-names -h mysql -u onson001 -p2PeEC8hMU NGS_dev < get_07_2151_exon_pileup.sql > test_cnv_07_2151_tso_pileup.txt
mysql --skip-column-names -h mysql -u onson001 -p2PeEC8hMU NGS_dev < get_07_2151_exon_bwa.sql > test_cnv_07_2151_tso_bwa_pileup.txt
mysql --skip-column-names -h mysql -u onson001 -p2PeEC8hMU NGS_dev < get_07_2151_exon_bowtie.sql > test_cnv_07_2151_tso_bowtie_pileup.txt
