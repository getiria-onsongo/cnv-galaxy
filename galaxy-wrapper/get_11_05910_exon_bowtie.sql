SELECT DISTINCT chr, pos, coverage FROM 
test_tso_exon_contig_pileup
JOIN
cnv_11_05910_exon_bowtie
USING (chr,pos);
