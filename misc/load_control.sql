DROP TABLE IF EXISTS cnv_07_2151_pileup;
CREATE TABLE cnv_07_2151_pileup(
chr VARCHAR(32),
pos INT,
coverage INT,
mapped_reads INT
);
LOAD DATA LOCAL INFILE '/Users/onson001/Desktop/galaxy-wrapper/test_cnv_07_2151_tso_pileup.txt' INTO TABLE cnv_07_2151_pileup FIELDS TERMINATED BY '\t';
CREATE INDEX cnv_07_2151_pileup_i1 ON cnv_07_2151_pileup(chr,pos);

DROP TABLE IF EXISTS cnv_07_2151_bwa_pileup;
CREATE TABLE cnv_07_2151_bwa_pileup(
chr VARCHAR(32),
pos INT,
coverage INT
);
LOAD DATA LOCAL INFILE '/Users/onson001/Desktop/galaxy-wrapper/test_cnv_07_2151_tso_bwa_pileup.txt' INTO TABLE cnv_07_2151_bwa_pileup FIELDS TERMINATED BY '\t';
CREATE INDEX cnv_07_2151_bwa_pileup_i1 ON cnv_07_2151_bwa_pileup(chr,pos);

DROP TABLE IF EXISTS cnv_07_2151_bowtie_pileup;
CREATE TABLE cnv_07_2151_bowtie_pileup(
chr VARCHAR(32),
pos INT,
coverage INT
);
LOAD DATA LOCAL INFILE '/Users/onson001/Desktop/galaxy-wrapper/test_cnv_07_2151_tso_bowtie_pileup.txt' INTO TABLE cnv_07_2151_bowtie_pileup FIELDS TERMINATED BY '\t';
CREATE INDEX cnv_07_2151_bowtie_pileup_i1 ON cnv_07_2151_bowtie_pileup(chr,pos);

DROP TABLE IF EXISTS cnv_07_2151_exon_pileup;
CREATE TABLE cnv_07_2151_exon_pileup AS
SELECT DISTINCT A.*, coverage FROM 
tso_exon_contig_pileup A
JOIN
cnv_07_2151_pileup B
USING(chr,pos);
CREATE INDEX cnv_07_2151_exon_pileup_1 ON cnv_07_2151_exon_pileup(exon_contig_id);
CREATE INDEX cnv_07_2151_exon_pileup_2 ON cnv_07_2151_exon_pileup(chr,pos);

DROP TABLE IF EXISTS cnv_07_2151_exon_bwa;
CREATE TABLE cnv_07_2151_exon_bwa AS
SELECT DISTINCT A.*, coverage FROM 
tso_exon_contig_pileup  A
JOIN
cnv_07_2151_bwa_pileup B
USING(chr,pos);
CREATE INDEX cnv_07_2151_exon_bwa_1 ON cnv_07_2151_exon_bwa(exon_contig_id);
CREATE INDEX cnv_07_2151_exon_bwa_2 ON cnv_07_2151_exon_bwa(chr,pos);

DROP TABLE IF EXISTS cnv_07_2151_exon_bowtie;
CREATE TABLE cnv_07_2151_exon_bowtie AS
SELECT DISTINCT A.*, coverage FROM 
tso_exon_contig_pileup A
JOIN
cnv_07_2151_bowtie_pileup B
USING(chr,pos);
CREATE INDEX cnv_07_2151_exon_bowtie_1 ON cnv_07_2151_exon_bowtie(exon_contig_id);
CREATE INDEX cnv_07_2151_exon_bowtie_2 ON cnv_07_2151_exon_bowtie(chr,pos);

DROP TABLE IF EXISTS cnv_07_2151_exon_bwa_bowtie_ratio;
CREATE TABLE cnv_07_2151_exon_bwa_bowtie_ratio AS
SELECT DISTINCT A.chr, A.pos, (A.coverage/B.coverage) AS bowtie_bwa_ratio
FROM
cnv_07_2151_exon_bowtie A
JOIN
cnv_07_2151_exon_bwa B
ON(A.chr = B.chr AND A.pos = B.pos);
CREATE INDEX cnv_07_2151_exon_bwa_bowtie_ratio_1 ON cnv_07_2151_exon_bwa_bowtie_ratio(chr,pos);
