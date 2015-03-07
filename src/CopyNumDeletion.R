mysql_delete_tables <- function (con, sample_name, control_name){
    drop_str <- paste("DROP TABLE IF EXISTS ",sample_name,"_3_random_ref;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_reference;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_exon_reference;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_joint_cov;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_joint_cov_oe;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_joint_control;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene_cov;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene_cov;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene_cov;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS ",sample_name,"_tso_cnv;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_control;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_control;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_control;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_within_ratio;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_exon_within_ratio;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_tso;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene_norm;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_tso_over_",control_name,"_n_bowtie_bwa_ratio_gene_out;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_pileup;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_bwa_pileup;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_bowtie_pileup;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_pileup;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_bwa;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_bowtie;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_bwa_bowtie_ratio;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_pileup_bowtie_bwa;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS tso_",sample_name,"_window;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS tso_exon_60bp_segments_main_data_",sample_name,";",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_pileup_bowtie_bwa;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS tso_",control_name,"_window;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS tso_exon_60bp_segments_main_data_",control_name,";",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_heterozygous_mult;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_heterozygous_mult_oe;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_homozygous;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_ref1;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_ref2;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_ref3;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS ",sample_name,"_gene_list;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS ",sample_name,"_ordered_genes;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_tso_over_",control_name,"_n_bowtie_bwa_ratio_gene_out;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS data_",sample_name,";",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS ref1_",sample_name,"_ratio;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS ref2_",sample_name,"_ratio;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS ref3_",sample_name,"_ratio;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_tso_exon_60bp_segments_main_data;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_ordered_genes;",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_bowtie_pileup",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_bwa_pileup",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_exon_bowtie",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_exon_bwa",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_exon_bwa_bowtie_ratio",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_exon_pileup",sep="");
    drop <- dbGetQuery(con, drop_str);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_pileup",sep="");
    drop <- dbGetQuery(con, drop_str);
}

mysql_get_raw_data<- function (con, sample_name, control_name){
    drop_str1 <- paste("DROP TABLE IF EXISTS ",sample_name,"_gene_list;",sep="");
    drop1 <- dbGetQuery(con, drop_str1);
    create_table_sql1 <- paste("CREATE TABLE ",sample_name,"_gene_list AS SELECT DISTINCT gene_symbol FROM ",sample_name,"_tso_cnv UNION SELECT DISTINCT gene_symbol FROM cnv_",sample_name,"_ordered_genes;",sep="");
    create_table1 <- dbGetQuery(con, create_table_sql1);
    
    drop_str2 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_tso_exon_60bp_segments_main_data;",sep="");
    drop2 <- dbGetQuery(con, drop_str2);
    create_table_sql2 <- paste("CREATE TABLE cnv_",sample_name,"_tso_exon_60bp_segments_main_data AS SELECT A.* FROM tso_exon_60bp_segments_main_data A JOIN ",sample_name,"_gene_list B USING (gene_symbol);",sep="");
    create_table2 <- dbGetQuery(con, create_table_sql2);
    
    drop_str3 <- paste("DROP TABLE IF EXISTS ref1_",sample_name,"_ratio;",sep="");
    drop3 <- dbGetQuery(con, drop_str3);
    create_table_sql3 <- paste("CREATE TABLE ref1_",sample_name,"_ratio AS SELECT window_id, window_number, window_start, window_end, MIN(gene_symbol) AS gene_symbol, AVG(A_over_B_ratio) AS avg_ratio, MIN(bowtie_bwa_ratio) AS min_bowtie_bwa_ratio, MAX(bowtie_bwa_ratio) AS max_bowtie_bwa_ratio FROM (SELECT A.*, A_over_B_ratio, bowtie_bwa_ratio FROM cnv_",sample_name,"_tso_exon_60bp_segments_main_data A JOIN cnv_",sample_name,"_over_",control_name,"_ref1  B ON(A.chr = B.chr AND A.pos = B.pos)) C GROUP BY window_id;",sep="");
    create_table3 <- dbGetQuery(con, create_table_sql3);
    
    drop_str4 <- paste("DROP TABLE IF EXISTS ref2_",sample_name,"_ratio;",sep="");
    drop4 <- dbGetQuery(con, drop_str4);
    create_table_sql4 <- paste("CREATE TABLE ref2_",sample_name,"_ratio AS SELECT window_id, window_number, window_start, window_end, MIN(gene_symbol) AS gene_symbol, AVG(A_over_B_ratio) AS avg_ratio, MIN(bowtie_bwa_ratio) AS min_bowtie_bwa_ratio, MAX(bowtie_bwa_ratio) AS max_bowtie_bwa_ratio FROM (SELECT A.*, A_over_B_ratio, bowtie_bwa_ratio FROM cnv_",sample_name,"_tso_exon_60bp_segments_main_data A JOIN cnv_",sample_name,"_over_",control_name,"_ref2  B ON(A.chr = B.chr AND A.pos = B.pos)) C GROUP BY window_id;",sep="");
    create_table4 <- dbGetQuery(con, create_table_sql4);
    
    drop_str5 <- paste("DROP TABLE IF EXISTS ref3_",sample_name,"_ratio;",sep="");
    drop5 <- dbGetQuery(con, drop_str5);
    create_table_sql5 <- paste("CREATE TABLE ref3_",sample_name,"_ratio AS SELECT window_id, window_number, window_start, window_end, MIN(gene_symbol) AS gene_symbol, AVG(A_over_B_ratio) AS avg_ratio, MIN(bowtie_bwa_ratio) AS min_bowtie_bwa_ratio, MAX(bowtie_bwa_ratio) AS max_bowtie_bwa_ratio FROM (SELECT A.*, A_over_B_ratio, bowtie_bwa_ratio FROM cnv_",sample_name,"_tso_exon_60bp_segments_main_data A JOIN cnv_",sample_name,"_over_",control_name,"_ref3  B ON(A.chr = B.chr AND A.pos = B.pos)) C GROUP BY window_id;",sep="");
    create_table5 <- dbGetQuery(con, create_table_sql5);
    
    get_data_str <- paste("SELECT A1.*, B1.avg_ratio AS ref3_avg_ratio, B1.min_bowtie_bwa_ratio AS ref3_min_bowtie_bwa_ratio, B1.max_bowtie_bwa_ratio AS ref3_max_bowtie_bwa_ratio FROM (SELECT A.*, B.avg_ratio AS ref2_avg_ratio, B.min_bowtie_bwa_ratio AS ref2_min_bowtie_bwa_ratio, B.max_bowtie_bwa_ratio AS ref2_max_bowtie_bwa_ratio FROM ref1_",sample_name,"_ratio A JOIN ref2_",sample_name,"_ratio B ON(A.window_id = B.window_id)) A1 JOIN ref3_",sample_name,"_ratio B1 ON(A1.window_id = B1.window_id);",sep="");
    data <- dbGetQuery(con, get_data_str);
    
    # file_name <- paste(sample_name,"_raw_data.txt",sep="");
    file_name <- "raw_data.txt";
    write.table(data, file = file_name, sep = "\t", col.names = TRUE, quote=FALSE,row.names = F);
    
}

mysql_output_cnv <- function (con, sample_name){
    get_data_str <- paste("SELECT capture, gene_symbol, type, avg_coverage, coverage_std_dev, bb_ratio_std_dev, median_abs_residual FROM ",sample_name,"_tso_cnv ORDER BY median_abs_residual;",sep="");
    data <- dbGetQuery(con, get_data_str);
    # file_name <- paste(sample_name,"_cnv.txt",sep="");
    file_name <- "cnv.txt";
    write.table(data, file = file_name, sep = "\t", col.names = TRUE, quote=FALSE,row.names = F);
}

plot_cnv_and_ordered_genes_bak <- function (con, sample_name, control_name){
    
    get_data_str <- paste("SELECT gene_symbol FROM ",sample_name,"_tso_cnv UNION SELECT gene_symbol FROM cnv_",sample_name,"_ordered_genes;",sep="");
    data <- dbGetQuery(con, get_data_str);
    gene_list <- unique(data$gene_symbol);
    n =length(gene_list);
    data_table = paste("cnv_",sample_name,"_tso_over_",control_name,"_n_bowtie_bwa_ratio_gene_out",sep="");
    
    for(i in 1:n){
        gene = gene_list[i];
        
        plot_label = paste(gene,"_",sample_name,"_noise_red_ratio",sep="");
        image_name = paste(plot_label,".png",sep="");
        png(image_name, width=23, height=6, units="in", res=600)
        
        cnv_plot_all_bowtie_bwa(con, data_table, "pos","gene_symbol", gene, "A_over_B_ratio","bowtie_bwa_ratio",2.0,plot_label);
        
        garbage <- dev.off ();
    }
    
}

plot_cnv_and_ordered_genes <- function (con, sample_name, control_name, width_val,single_plot_height){
    
    get_data_str <- paste("SELECT gene_symbol FROM ",sample_name,"_tso_cnv UNION SELECT gene_symbol FROM cnv_",sample_name,"_ordered_genes;",sep="");
    data <- dbGetQuery(con, get_data_str);
    gene_list <- unique(data$gene_symbol);
    n =length(gene_list);
    data_table = paste("cnv_",sample_name,"_tso_over_",control_name,"_n_bowtie_bwa_ratio_gene_out",sep="");
    
    pdf('CoveragePlots.pdf', width=width_val, onefile=TRUE);
    
    for(i in 1:n){
        gene = gene_list[i];
        plot_label = paste(gene,"_",sample_name,"_noise_red_ratio",sep="");
        cnv_plot_all_bowtie_bwa(con, data_table, "pos","gene_symbol", gene, "A_over_B_ratio","bowtie_bwa_ratio",single_plot_height,plot_label);
    }
    
    garbage <- dev.off ();
}

mysql_load_ordered_genes <- function (con,sample_name, ordered_genes){
    data = read.table(ordered_genes);
    colnames(data)[1] <- 'gene_symbol'
    ans <- data.frame(data);
    drop_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_ordered_genes;",sep="");
    drop <- dbGetQuery(con, drop_str);
    out_table = paste("cnv_",sample_name,"_ordered_genes",sep="");
    garbage <- dbWriteTable(con, out_table, ans, append=FALSE,row.names=FALSE);
}

mysql_combine_cnv  <- function (con,sample_name, control_name, platform){
    drop_str <- paste("DROP TABLE IF EXISTS ",sample_name,"_tso_cnv;",sep="");
    drop <- dbGetQuery(con, drop_str);
    
    create_out_table_sql1 <- paste("CREATE TABLE ",sample_name,"_tso_cnv AS SELECT '",platform,"' AS capture, gene_symbol, type, avg_coverage, coverage_variance, coverage_std_dev, POWER(2,bb_ratio_variance) AS bb_ratio_variance, POWER(2,bb_ratio_std_dev) AS bb_ratio_std_dev, 100.0000 AS median_abs_residual FROM (SELECT gene_symbol, type, AVG(coverage) AS avg_coverage, VAR_SAMP(coverage) AS coverage_variance, STDDEV_SAMP(coverage) AS coverage_std_dev, VAR_SAMP(bowtie_bwa_ratio) AS bb_ratio_variance, STDDEV_SAMP(bowtie_bwa_ratio) AS bb_ratio_std_dev FROM (SELECT A1.*, coverage, LOG2(bowtie_bwa_ratio) AS bowtie_bwa_ratio FROM (SELECT DISTINCT A.gene_symbol, type, chr, pos FROM (SELECT * FROM cnv_",sample_name,"_heterozygous_mult UNION SELECT * FROM cnv_",sample_name,"_heterozygous_mult_oe) A JOIN tso_exon_60bp_segments_main_data B USING (gene_symbol)) A1 JOIN cnv_",sample_name,"_pileup_bowtie_bwa B1 ON(A1.chr = B1.chr AND A1.pos = B1.pos)) C GROUP BY gene_symbol) D UNION SELECT '",platform,"' AS capture, gene_symbol, type, avg_coverage, coverage_variance, coverage_std_dev, POWER(2,bb_ratio_variance) AS bb_ratio_variance, POWER(2,bb_ratio_std_dev) AS bb_ratio_std_dev, 100.0000 AS median_abs_residual FROM (SELECT gene_symbol, type, AVG(coverage) AS avg_coverage, VAR_SAMP(coverage) AS coverage_variance, STDDEV_SAMP(coverage) AS coverage_std_dev, VAR_SAMP(bowtie_bwa_ratio) AS bb_ratio_variance, STDDEV_SAMP(bowtie_bwa_ratio) AS bb_ratio_std_dev FROM (SELECT A1.*, coverage, LOG2(bowtie_bwa_ratio) AS bowtie_bwa_ratio  FROM (SELECT DISTINCT A.gene_symbol, type, chr, pos FROM cnv_",sample_name,"_homozygous A JOIN tso_exon_60bp_segments_main_data B USING (gene_symbol)) A1 JOIN cnv_",control_name,"_pileup_bowtie_bwa B1 ON(A1.chr = B1.chr AND A1.pos = B1.pos)) C GROUP BY gene_symbol) D;",sep="");
    create_out_table1 <- dbGetQuery(con, create_out_table_sql1);
}

mysql_get_cnv  <- function (con,sample_name, control_name){
    # Get heterozygous CNV from gene with more than one exon
    cnv_gene_list <- c();
    table = paste("cnv_",sample_name,"_over_",control_name,"_joint_cov",sep="");
    out_table = paste("cnv_",sample_name,"_heterozygous_mult",sep="");
    min_cnv_ratio = 0.3;
    max_cnv_ratio = 0.7;
    min_exons = 2;
    min_windows = 3;
    gene_symbol = mysql_table_cnv(con, table, min_cnv_ratio, max_cnv_ratio, min_exons, min_windows, cnv_gene_list);
    type = rep("heterozygous",length(gene_symbol));
    ans <- data.frame(gene_symbol,type);
    drop_str <- paste("DROP TABLE IF EXISTS ",out_table,";",sep="");
    drop <- dbGetQuery(con, drop_str);
    dbWriteTable(con, out_table, ans, append=FALSE,row.names=FALSE);
    
    
    # Get heterozygous CNV from gene with exon
    cnv_gene_list <- c();
    table = paste("cnv_",sample_name,"_over_",control_name,"_joint_cov_oe",sep="");
    out_table = paste("cnv_",sample_name,"_heterozygous_mult_oe",sep="");
    min_cnv_ratio = 0.3;
    max_cnv_ratio = 0.7;
    min_exons = 1;
    min_windows = 3;
    gene_symbol = mysql_table_cnv(con, table, min_cnv_ratio, max_cnv_ratio, min_exons, min_windows, cnv_gene_list);
    type = rep("heterozygous",length(gene_symbol));
    ans <- data.frame(gene_symbol,type);
    drop_str <- paste("DROP TABLE IF EXISTS ",out_table,";",sep="");
    drop <- dbGetQuery(con, drop_str);
    garbage <- dbWriteTable(con, out_table, ans, append=FALSE,row.names=FALSE);
    
    
    # Get homozygous CNV
    cnv_gene_list <- c();
    table = paste("cnv_",sample_name,"_over_",control_name,"_joint_control",sep="");
    out_table = paste("cnv_",sample_name,"_homozygous",sep="");
    min_cnv_ratio = 0;
    max_cnv_ratio = 0.3;
    min_exons = 0;
    min_windows = 3;
    gene_symbol = mysql_table_cnv(con, table, min_cnv_ratio, max_cnv_ratio, min_exons, min_windows, cnv_gene_list);
    type = rep("homozygous",length(gene_symbol));
    ans <- data.frame(gene_symbol,type);
    drop_str <- paste("DROP TABLE IF EXISTS ",out_table,";",sep="");
    drop <- dbGetQuery(con, drop_str);
    garbage <-  dbWriteTable(con, out_table, ans, append=FALSE,row.names=FALSE);
    
}

mysql_table_cnv  <- function (con, table, min_cnv_ratio, max_cnv_ratio, min_exons, min_windows, cnv_gene_list){
    get_data_str <- paste("SELECT DISTINCT gene_symbol,exon_number, window_id, window_number FROM ",table," WHERE cnv_ratio >= ",min_cnv_ratio," AND cnv_ratio < ",max_cnv_ratio," ORDER BY gene_symbol, window_number ASC;",sep="");
    data <- dbGetQuery(con, get_data_str);
    
    gene_list <- unique(data$gene_symbol);
    n =length(gene_list);
    
    for(i in 1:n){
        gene_i_data <- data[data$gene_symbol == gene_list[i],]
        exon_number_array = gene_i_data$exon_number
        window_number_array = gene_i_data$window_number
        if(mysql_check_cnv(exon_number_array, window_number_array, min_exons, min_windows)){
            cnv_gene_list <- append(cnv_gene_list, gene_list[i])
        }
    }
    return (cnv_gene_list);
}

mysql_check_cnv  <- function (exon_number_array, window_number_array, min_exons, min_windows){
    isCNV = FALSE;
    n =length(window_number_array);
    
    if((min_exons <= 1) & (min_windows <= 1) & (n == 1)){
        isCNV = TRUE;
    }

    min_exons = min_exons - 1;
    min_windows = min_windows - 1;
    start_index = 1;
    end_index = 1;
    
    if(n > 1){
        for(i in 2:n){
            if((window_number_array[i] - window_number_array[i-1]) == 1){
                end_index = i;
            }else{
            
                if((end_index - start_index) >= min_windows){
                    exons <- unique(exon_number_array[start_index:end_index]);
                    temp <- rle(diff(exons));
                    if(any(temp$lengths >= min_exons & temp$values==1)){
                        isCNV = TRUE;
                        break;
                    }
                
                    if(min_exons < 1){
                        isCNV = TRUE;
                    }
                }
                start_index = i;
                end_index = i;
            }
        }
    }
    
    if((end_index - start_index) >= min_windows){
        exons <- unique(exon_number_array[start_index:end_index]);
        temp <- rle(diff(exons));
        if(any(temp$lengths >= min_exons & temp$values==1)){
            isCNV = TRUE;
        }
        if(min_exons < 1){
            isCNV = TRUE;
        }
    }
    return(isCNV);
}

mysql_cnv_filter  <- function (con, sample_name, control_name, het_low_limit, het_high_limit, min_bb_ratio, max_bb_ratio, min_avg_cov){
    del_str1 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_joint_cov;",sep="");
    create_out_table_sql1 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_joint_cov AS SELECT DISTINCT A1.* FROM (SELECT A.* FROM (SELECT DISTINCT * FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene_cov WHERE min_bowtie_bwa_ratio >  ",min_bb_ratio," AND max_bowtie_bwa_ratio < ",max_bb_ratio," AND cnv_ratio > ",het_low_limit," AND cnv_ratio < ",het_high_limit," AND avg_window_coverage > ",min_avg_cov," ) A JOIN (SELECT DISTINCT gene_symbol, gene_num_exons, exon_contig_id, window_id FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene_cov WHERE min_bowtie_bwa_ratio >  ",min_bb_ratio," AND max_bowtie_bwa_ratio < ",max_bb_ratio," AND cnv_ratio > ",het_low_limit," AND cnv_ratio < ",het_high_limit," AND avg_window_coverage > ",min_avg_cov,") B USING(window_id)) A1 JOIN (SELECT DISTINCT gene_symbol, gene_num_exons, exon_contig_id, window_id FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene_cov WHERE min_bowtie_bwa_ratio >  ",min_bb_ratio," AND max_bowtie_bwa_ratio < ",max_bb_ratio," AND cnv_ratio > ",het_low_limit," AND cnv_ratio < ",het_high_limit," AND avg_window_coverage > ",min_avg_cov,") B1 USING(window_id);",sep="");
    drop1 <- dbGetQuery(con, del_str1);
    create_out_table1 <- dbGetQuery(con, create_out_table_sql1);
    
    del_str2 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_joint_cov_oe;",sep="");
    create_out_table_sql2 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_joint_cov_oe AS SELECT * FROM cnv_",sample_name,"_over_",control_name,"_joint_cov WHERE gene_num_exons = 1;",sep="");
    drop2 <- dbGetQuery(con, del_str2);
    create_out_table2 <- dbGetQuery(con, create_out_table_sql2);
    
    del_str3 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_joint_control;",sep="");
    create_out_table_sql3 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_joint_control AS SELECT DISTINCT A1.* FROM (SELECT A.* FROM (SELECT DISTINCT * FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_control WHERE cnv_ratio <= ",het_low_limit," AND avg_window_coverage > ",min_avg_cov," AND ref_min_bowtie_bwa_ratio >  ",min_bb_ratio," AND ref_max_bowtie_bwa_ratio < ",max_bb_ratio,") A JOIN (SELECT DISTINCT gene_symbol, gene_num_exons, exon_contig_id, window_id FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_control WHERE cnv_ratio <= ",het_low_limit," AND avg_window_coverage > ",min_avg_cov," AND ref_min_bowtie_bwa_ratio >  ",min_bb_ratio," AND ref_max_bowtie_bwa_ratio < ",max_bb_ratio,") B USING(window_id)) A1 JOIN (SELECT DISTINCT gene_symbol, gene_num_exons, exon_contig_id, window_id FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_control WHERE cnv_ratio <= ",het_low_limit," AND avg_window_coverage > ",min_avg_cov," AND ref_min_bowtie_bwa_ratio >  ",min_bb_ratio," AND ref_max_bowtie_bwa_ratio < ",max_bb_ratio,") B1 USING(window_id);",sep="");
    drop3 <- dbGetQuery(con, del_str3);
    create_out_table3 <- dbGetQuery(con, create_out_table_sql3);
    
}

mysql_add_control_stats <- function (con, sample_name, control_name){
    del_str1 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_control;",sep="");
    create_out_table_sql1 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_control AS SELECT DISTINCT A.*, avg_window_coverage, ref_min_bowtie_bwa_ratio, ref_max_bowtie_bwa_ratio FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene A JOIN tso_exon_60bp_segments_main_data_",control_name," B ON(A.window_id = B.window_id);",sep="");
    create_out_table1_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_contr ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_control(window_id);",sep="");
    drop1 <- dbGetQuery(con, del_str1);
    create_out_table1 <- dbGetQuery(con, create_out_table_sql1);
    create_out_table1_index <- dbGetQuery(con, create_out_table1_index_sql);
    
    del_str2 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_control;",sep="");
    create_out_table_sql2 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_control AS SELECT DISTINCT A.*, avg_window_coverage, ref_min_bowtie_bwa_ratio, ref_max_bowtie_bwa_ratio FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene A JOIN tso_exon_60bp_segments_main_data_",control_name," B ON(A.window_id = B.window_id);",sep="");
    create_out_table2_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_contr ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_control(window_id);",sep="");
    drop2 <- dbGetQuery(con, del_str2);
    create_out_table2 <- dbGetQuery(con, create_out_table_sql2);
    create_out_table2_index <- dbGetQuery(con, create_out_table2_index_sql);
    
    del_str3 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_control;",sep="");
    create_out_table_sql3 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_control AS SELECT DISTINCT A.*, avg_window_coverage, ref_min_bowtie_bwa_ratio, ref_max_bowtie_bwa_ratio FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene A JOIN tso_exon_60bp_segments_main_data_",control_name," B ON(A.window_id = B.window_id);",sep="");
    create_out_table3_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_contr ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_control(window_id);",sep="");
    drop3 <- dbGetQuery(con, del_str3);
    create_out_table3 <- dbGetQuery(con, create_out_table_sql3);
    create_out_table3_index <- dbGetQuery(con, create_out_table3_index_sql);
}

mysql_add_window_stats <- function (con, sample_name, control_name){
    del_str1 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene_cov;",sep="");
    create_out_table_sql1 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene_cov AS SELECT DISTINCT A.*, avg_window_coverage, window_coverage_std, window_bb_ratio_std FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene A JOIN tso_exon_60bp_segments_main_data_",sample_name," B ON(A.window_id = B.window_id);",sep="");
    create_out_table1_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene_cov(window_id);",sep="");
    drop1 <- dbGetQuery(con, del_str1);
    create_out_table1 <- dbGetQuery(con, create_out_table_sql1);
    create_out_table1_index <- dbGetQuery(con, create_out_table1_index_sql);
    
    del_str2 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene_cov;",sep="");
    create_out_table_sql2 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene_cov AS SELECT DISTINCT A.*, avg_window_coverage, window_coverage_std, window_bb_ratio_std FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene A JOIN tso_exon_60bp_segments_main_data_",sample_name," B ON(A.window_id = B.window_id);",sep="");
    create_out_table2_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene_cov(window_id);",sep="");
    drop2 <- dbGetQuery(con, del_str2);
    create_out_table2 <- dbGetQuery(con, create_out_table_sql2);
    create_out_table2_index <- dbGetQuery(con, create_out_table2_index_sql);
    
    del_str3 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene_cov;",sep="");
    create_out_table_sql3 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene_cov AS SELECT DISTINCT A.*, avg_window_coverage, window_coverage_std, window_bb_ratio_std FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene A JOIN tso_exon_60bp_segments_main_data_",sample_name," B ON(A.window_id = B.window_id);",sep="");
    create_out_table3_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene_cov(window_id);",sep="");
    drop3 <- dbGetQuery(con, del_str3);
    create_out_table3 <- dbGetQuery(con, create_out_table_sql3);
    create_out_table3_index <- dbGetQuery(con, create_out_table3_index_sql);
}

mysql_compute_window_stats <- function (con, sample_name, control_name){
    del_str1 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_pileup_bowtie_bwa;",sep="");
    create_out_table_sql1 <- paste("CREATE TABLE cnv_",sample_name,"_pileup_bowtie_bwa AS SELECT DISTINCT A.chr, A.pos, A.coverage, bowtie_bwa_ratio FROM cnv_",sample_name,"_exon_pileup A JOIN cnv_",sample_name,"_exon_bwa_bowtie_ratio B USING(chr,pos);",sep="");
    create_out_table1_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_pileup_bowtie_bwa_i1 ON  cnv_",sample_name,"_pileup_bowtie_bwa(chr,pos);",sep="");
    drop1 <- dbGetQuery(con, del_str1);
    create_out_table1 <- dbGetQuery(con, create_out_table_sql1);
    create_out_table1_index <- dbGetQuery(con, create_out_table1_index_sql);
    
    del_str2 <- paste("DROP TABLE IF EXISTS tso_",sample_name,"_window;",sep="");
    create_out_table_sql2 <- paste("CREATE TABLE tso_",sample_name,"_window AS SELECT window_id, AVG(coverage) AS avg_window_coverage, VAR_SAMP(coverage) AS window_coverage_var, STDDEV_SAMP(coverage) AS window_coverage_std, MIN(bowtie_bwa_ratio) AS min_bowtie_bwa_ratio, MAX(bowtie_bwa_ratio) AS max_bowtie_bwa_ratio, VAR_SAMP(bowtie_bwa_ratio) AS window_bb_ratio_var, STDDEV_SAMP(bowtie_bwa_ratio) AS window_bb_ratio_std FROM (SELECT DISTINCT window_id, A.pos, coverage, bowtie_bwa_ratio FROM tso_exon_60bp_segments_main_data A JOIN cnv_",sample_name,"_pileup_bowtie_bwa B ON(A.chr = B.chr AND A.pos = B.pos)) A1 GROUP BY window_id;",sep="");
    create_out_table2_index_sql <- paste("CREATE INDEX tso_",sample_name,"_window_i1 ON  tso_",sample_name,"_window(window_id);",sep="");
    drop2 <- dbGetQuery(con, del_str2);
    create_out_table2 <- dbGetQuery(con, create_out_table_sql2);
    create_out_table2_index <- dbGetQuery(con, create_out_table2_index_sql);
    
    del_str3 <- paste("DROP TABLE IF EXISTS tso_exon_60bp_segments_main_data_",sample_name,";",sep="");
    create_out_table_sql3 <- paste("CREATE TABLE tso_exon_60bp_segments_main_data_",sample_name," AS SELECT DISTINCT A.*, avg_window_coverage, window_coverage_var, window_coverage_std, min_bowtie_bwa_ratio, max_bowtie_bwa_ratio, window_bb_ratio_var, window_bb_ratio_std FROM tso_exon_60bp_segments_main_data A JOIN tso_",sample_name,"_window B USING(window_id);",sep="");
    create_out_table3_index_sql <- paste("CREATE INDEX tso_exon_60bp_segments_main_data_",sample_name,"_i1 ON  tso_exon_60bp_segments_main_data_",sample_name,"(window_id);",sep="");
    drop3 <- dbGetQuery(con, del_str3);
    create_out_table3 <- dbGetQuery(con, create_out_table_sql3);
    create_out_table3_index <- dbGetQuery(con, create_out_table3_index_sql);
    
    
    del_str4 <- paste("DROP TABLE IF EXISTS cnv_",control_name,"_pileup_bowtie_bwa;",sep="");
    create_out_table_sql4 <- paste("CREATE TABLE cnv_",control_name,"_pileup_bowtie_bwa AS SELECT DISTINCT A.chr, A.pos, A.coverage, bowtie_bwa_ratio FROM cnv_",control_name,"_exon_pileup A JOIN cnv_",control_name,"_exon_bwa_bowtie_ratio B USING(chr,pos);",sep="");
    create_out_table4_index_sql <- paste("CREATE INDEX cnv_",control_name,"_pileup_bowtie_bwa_i1 ON  cnv_",control_name,"_pileup_bowtie_bwa(chr,pos);",sep="");
    drop4 <- dbGetQuery(con, del_str4);
    create_out_table4 <- dbGetQuery(con, create_out_table_sql4);
    create_out_table4_index <- dbGetQuery(con, create_out_table4_index_sql);
    
    
    del_str5 <- paste("DROP TABLE IF EXISTS tso_",control_name,"_window;",sep="");
    create_out_table_sql5 <- paste("CREATE TABLE tso_",control_name,"_window AS SELECT window_id, AVG(coverage) AS avg_window_coverage, VAR_SAMP(coverage) AS window_coverage_var, STDDEV_SAMP(coverage) AS window_coverage_std, MIN(bowtie_bwa_ratio) AS ref_min_bowtie_bwa_ratio, MAX(bowtie_bwa_ratio) AS ref_max_bowtie_bwa_ratio, VAR_SAMP(bowtie_bwa_ratio) AS window_bb_ratio_var, STDDEV_SAMP(bowtie_bwa_ratio) AS window_bb_ratio_std FROM (SELECT DISTINCT window_id, A.pos, coverage, bowtie_bwa_ratio FROM tso_exon_60bp_segments_main_data A JOIN cnv_",control_name,"_pileup_bowtie_bwa B ON(A.chr = B.chr AND A.pos = B.pos)) A1 GROUP BY window_id;",sep="");
    create_out_table5_index_sql <- paste("CREATE INDEX tso_",control_name,"_window_i1 ON  tso_",control_name,"_window(window_id);",sep="");
    drop5 <- dbGetQuery(con, del_str5);
    create_out_table5 <- dbGetQuery(con, create_out_table_sql5);
    create_out_table5_index <- dbGetQuery(con, create_out_table5_index_sql);
    
    del_str6 <- paste("DROP TABLE IF EXISTS tso_exon_60bp_segments_main_data_",control_name,";",sep="");
    create_out_table_sql6 <- paste("CREATE TABLE tso_exon_60bp_segments_main_data_",control_name," AS SELECT DISTINCT A.*, avg_window_coverage, window_coverage_var, window_coverage_std, ref_min_bowtie_bwa_ratio, ref_max_bowtie_bwa_ratio, window_bb_ratio_var, window_bb_ratio_std FROM tso_exon_60bp_segments_main_data A JOIN tso_",control_name,"_window B USING(window_id);",sep="");
    create_out_table6_index_sql <- paste("CREATE INDEX tso_exon_60bp_segments_main_data_",control_name,"_i1 ON  tso_exon_60bp_segments_main_data_",control_name,"(window_id);",sep="");
    drop1 <- dbGetQuery(con, del_str6);
    create_out_table6 <- dbGetQuery(con, create_out_table_sql6);
    create_out_table6_index <- dbGetQuery(con, create_out_table6_index_sql);
    
}


mysql_add_gene_data <- function (con, sample_name, control_name){
    del_str1 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene;",sep="");
    create_out_table_sql1 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene AS SELECT DISTINCT A.*, exon_contig_id, exon_length, exon_number, gene_num_exons, gene_num_windows, window_number FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med A JOIN tso_exon_60bp_segments_window_data B ON(A.window_id = B.window_id);",sep="");
    create_out_table1_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene_1 ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_med_gene(gene_symbol);",sep="");
    drop1 <- dbGetQuery(con, del_str1);
    create_out_table1 <- dbGetQuery(con, create_out_table_sql1);
    create_out_table1_index <- dbGetQuery(con, create_out_table1_index_sql);
    
    del_str2 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene;",sep="");
    create_out_table_sql2 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene AS SELECT DISTINCT A.*, exon_contig_id, exon_length, exon_number, gene_num_exons, gene_num_windows, window_number FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med A JOIN tso_exon_60bp_segments_window_data B ON(A.window_id = B.window_id);",sep="");
    create_out_table2_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene_1 ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_med_gene(gene_symbol);",sep="");
    drop2 <- dbGetQuery(con, del_str2);
    create_out_table2 <- dbGetQuery(con, create_out_table_sql2);
    create_out_table2_index <- dbGetQuery(con, create_out_table2_index_sql);
    
    del_str3 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene;",sep="");
    create_out_table_sql3 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene AS SELECT DISTINCT A.*, exon_contig_id, exon_length, exon_number, gene_num_exons, gene_num_windows, window_number FROM cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med A JOIN tso_exon_60bp_segments_window_data B ON(A.window_id = B.window_id);",sep="");
    create_out_table3_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene_1 ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_med_gene(gene_symbol);",sep="");
    drop3 <- dbGetQuery(con, del_str3);
    create_out_table3 <- dbGetQuery(con, create_out_table_sql3);
    create_out_table3_index <- dbGetQuery(con, create_out_table3_index_sql);
}

mysql_add_window_info <- function (con, sample_name, control_name){
    del_str1 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1;",sep="");
    create_out_table_sql1 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1 AS SELECT DISTINCT A.*,ref_exon_contig_id, A_over_B_ratio, bowtie_bwa_ratio FROM tso_exon_60bp_segments_pileup A JOIN cnv_",sample_name,"_over_",control_name,"_ref1 B ON(A.chr = B.chr AND A.pos = B.pos);",sep="");
    create_out_table1_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1_1 ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref1(window_id);",sep="");
    drop1 <- dbGetQuery(con, del_str1);
    create_out_table1 <- dbGetQuery(con, create_out_table_sql1);
    create_out_table1_index <- dbGetQuery(con, create_out_table1_index_sql);
    
    del_str2 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2;",sep="");
    create_out_table_sql2 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2 AS SELECT DISTINCT A.*,ref_exon_contig_id, A_over_B_ratio, bowtie_bwa_ratio FROM tso_exon_60bp_segments_pileup A JOIN cnv_",sample_name,"_over_",control_name,"_ref2 B ON(A.chr = B.chr AND A.pos = B.pos);",sep="");
    create_out_table2_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2_1 ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref2(window_id);",sep="");
    drop2 <- dbGetQuery(con, del_str2);
    create_out_table2 <- dbGetQuery(con, create_out_table_sql2);
    create_out_table2_index <- dbGetQuery(con, create_out_table2_index_sql);
    
    del_str3 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3;",sep="");
    create_out_table_sql3 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3 AS SELECT DISTINCT A.*,ref_exon_contig_id, A_over_B_ratio, bowtie_bwa_ratio FROM tso_exon_60bp_segments_pileup A JOIN cnv_",sample_name,"_over_",control_name,"_ref3 B ON(A.chr = B.chr AND A.pos = B.pos);",sep="");
    create_out_table3_index_sql <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3_1 ON cnv_",sample_name,"_over_",control_name,"_60bp_exon_ref3(window_id);",sep="");
    drop3 <- dbGetQuery(con, del_str3);
    create_out_table3 <- dbGetQuery(con, create_out_table_sql3);
    create_out_table3_index <- dbGetQuery(con, create_out_table3_index_sql);
}

mysql_separate_ref <- function (con, sample_name, control_name){
    
    input <- paste("cnv_",sample_name,"_tso_over_",control_name,"_n_bowtie_bwa_ratio_gene_out",sep="");
    out_table1 <- paste("cnv_",sample_name,"_over_",control_name,"_ref1",sep="");
    out_table2 <- paste("cnv_",sample_name,"_over_",control_name,"_ref2",sep="");
    out_table3 <- paste("cnv_",sample_name,"_over_",control_name,"_ref3",sep="");
    
    
    gene_ref_array_str <- paste("SELECT ref_exon_contig_id FROM (SELECT DISTINCT ref_exon_contig_id FROM ",input,")A ORDER BY RAND() LIMIT 3;",sep="");
    gene_ref_array <- dbGetQuery(con, gene_ref_array_str);
    gene_ref <- gene_ref_array[,1];
    
    ref_exon1 <- gene_ref[1];
    ref_exon2 <- gene_ref[2];
    ref_exon3 <- gene_ref[3];

    del_str1 <- paste("DROP TABLE IF EXISTS ",out_table1,";",sep="");
    drop1 <- dbGetQuery(con, del_str1);
    create_out_table_sql1 = paste("CREATE TABLE ",out_table1," AS SELECT * FROM ",input," WHERE ref_exon_contig_id = '",ref_exon1,"';",sep="");
    create_out_table1 <- dbGetQuery(con, create_out_table_sql1);
    create_out_table1_index_sql <- paste("CREATE INDEX ",out_table1,"_1 ON ",out_table1,"(chr,pos);",sep="");
    create_out_table1_index <- dbGetQuery(con, create_out_table1_index_sql);
    
    del_str2 <- paste("DROP TABLE IF EXISTS ",out_table2,";",sep="");
    drop2 <- dbGetQuery(con, del_str2);
    create_out_table_sql2 = paste("CREATE TABLE ",out_table2," AS SELECT * FROM ",input," WHERE ref_exon_contig_id = '",ref_exon2,"';",sep="");
    create_out_table2 <- dbGetQuery(con, create_out_table_sql2);
    create_out_table2_index_sql <- paste("CREATE INDEX ",out_table2,"_1 ON ",out_table2,"(chr,pos);",sep="");
    create_out_table2_index <- dbGetQuery(con, create_out_table2_index_sql);
    
    del_str3 <- paste("DROP TABLE IF EXISTS ",out_table3,";",sep="");
    drop3 <- dbGetQuery(con, del_str3);
    create_out_table_sql3 = paste("CREATE TABLE ",out_table3," AS SELECT * FROM ",input," WHERE ref_exon_contig_id = '",ref_exon3,"';",sep="");
    create_out_table3 <- dbGetQuery(con, create_out_table_sql3);
    create_out_table3_index_sql <- paste("CREATE INDEX ",out_table3,"_1 ON ",out_table3,"(chr,pos);",sep="");
    create_out_table3_index <- dbGetQuery(con, create_out_table3_index_sql);
}

mysql_create_norm_out_table <- function (con, sample_name, control_name){
    del_str1 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene_norm;",sep="");
    del_str2 <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_tso_over_",control_name,"_n_bowtie_bwa_ratio_gene_out;",sep="");
    
    create_str1 <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene_norm AS SELECT * FROM cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene WHERE 1 > 2;",sep="");
    create_str2 <- paste("CREATE TABLE cnv_",sample_name,"_tso_over_",control_name,"_n_bowtie_bwa_ratio_gene_out AS SELECT * FROM cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene WHERE 1 > 2;",sep="");
    
    drop1 <- dbGetQuery(con, del_str1);
    drop2 <- dbGetQuery(con, del_str2);
    create1 <- dbGetQuery(con, create_str1);
    create2 <- dbGetQuery(con, create_str2);
}

mysql_add_gene_symbol <- function (con, sample_name, control_name){
    del_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene;",sep="");
    create_str <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene AS SELECT DISTINCT A.*, gene_symbol FROM cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio A JOIN tso_exon_contig_pileup B ON(A.chr = B.chr AND A.pos = B.pos);",sep="");
    index_str <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene_1 ON cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_gene(ref_exon_contig_id, gene_symbol);",sep="");
    drop <- dbGetQuery(con, del_str);
    create <- dbGetQuery(con, create_str);
    index <- dbGetQuery(con, index_str);
}

mysql_add_bowtie_bwa <- function (con, sample_name, control_name){
    del_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio;",sep="");
    create_str <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio AS SELECT DISTINCT A.*, bowtie_bwa_ratio FROM cnv_",sample_name,"_over_",control_name,"_tso A JOIN cnv_",sample_name,"_exon_bwa_bowtie_ratio B ON(A.chr = B.chr AND A.pos = B.pos);",sep="");
    index_str <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio_1 ON cnv_",sample_name,"_over_",control_name,"_n_bowtie_bwa_ratio(chr, pos);",sep="");
    drop <- dbGetQuery(con, del_str);
    create <- dbGetQuery(con, create_str);
    index <- dbGetQuery(con, index_str);
}

mysql_compute_ratio <- function (con, sample_name, control_name){
    del_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_over_",control_name,"_tso;",sep="");
    create_str <- paste("CREATE TABLE cnv_",sample_name,"_over_",control_name,"_tso(chr VARCHAR(8),pos INT,ref_exon_contig_id VARCHAR(56),A_over_B_ratio DECIMAL(35,30));",sep="");
    insert_data_str <- paste("INSERT INTO cnv_",sample_name,"_over_",control_name,"_tso(chr, pos, ref_exon_contig_id, A_over_B_ratio) SELECT DISTINCT A.chr, A.pos, A.ref_exon_contig_id, (A.within_ratio/B.within_ratio) AS A_over_B_ratio FROM cnv_",sample_name,"_exon_within_ratio A JOIN cnv_",control_name,"_exon_within_ratio B USING(chr, pos, ref_exon_contig_id);",sep="");
    index_str <- paste("CREATE INDEX cnv_",sample_name,"_over_",control_name,"_1 ON cnv_",sample_name,"_over_",control_name,"_tso(chr, pos);",sep="");
    drop <- dbGetQuery(con, del_str);
    create <- dbGetQuery(con, create_str);
    insert_data <- dbGetQuery(con, insert_data_str);
    index <- dbGetQuery(con, index_str);
}

mysql_within_sample <- function (con, sample_name){
    del_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_within_ratio;",sep="");
    create_str <- paste("CREATE TABLE cnv_",sample_name,"_exon_within_ratio(exon_contig_id VARCHAR(56),chr VARCHAR(32),pos INT(11),coverage INT(11),ref_exon_contig_id VARCHAR(56),ref_chr VARCHAR(32),ref_pos INT(11),ref_coverage INT(11),within_ratio DECIMAL(20,16));",sep="");
    insert_data_str <- paste("INSERT INTO cnv_",sample_name,"_exon_within_ratio(exon_contig_id,chr,pos,coverage,ref_exon_contig_id,ref_chr,ref_pos,ref_coverage,within_ratio) SELECT A.exon_contig_id, A.chr, A.pos, A.coverage, B.exon_contig_id AS ref_exon_contig_id, B.chr AS ref_chr, B.pos AS ref_pos, B.coverage AS ref_coverage, (A.coverage/B.coverage) AS within_ratio FROM cnv_",sample_name,"_exon_pileup A JOIN cnv_",sample_name,"_exon_reference B;",sep="");
    index_str <- paste("CREATE INDEX cnv_",sample_name,"_exon_within_ratio_1 ON cnv_",sample_name,"_exon_within_ratio(chr,pos,ref_exon_contig_id );",sep="");

    drop <- dbGetQuery(con, del_str);
    create <- dbGetQuery(con, create_str);
    insert_data <- dbGetQuery(con, insert_data_str);
    index <- dbGetQuery(con, index_str);
}

mysql_create_reference <- function (con, sample_name){
    del_str <- paste("DROP TABLE IF EXISTS ",sample_name,"_3_random_ref;",sep="");
    create_str <- paste(" CREATE TABLE ",sample_name,"_3_random_ref AS SELECT DISTINCT A1.* FROM tso_reference A1 WHERE exon_contig_id = 'chr13:23904274-23915829' OR exon_contig_id = 'chr13:32910401-32915333' OR exon_contig_id = 'chr6:152655142-152655408';",sep="");
    index1_str <- paste("CREATE INDEX ",sample_name,"_3_random_ref_i1 ON ",sample_name,"_3_random_ref(chr,pos);",sep="");
    index2_str <- paste("CREATE INDEX ",sample_name,"_3_random_ref_i2 ON ",sample_name,"_3_random_ref(exon_contig_id);",sep="");
    
    drop <- dbGetQuery(con, del_str);
    create <- dbGetQuery(con, create_str);
    index1 <- dbGetQuery(con, index1_str);
    index2 <- dbGetQuery(con, index2_str);
}


mysql_load_pileup <- function (con, sample_name, data_path, load_type){
    append_str <- "";
    
    if(load_type == "pileup"){
        append_str <- "";
    }else if (load_type == "bwa"){
        append_str <- "_bwa";
    }else if (load_type == "bowtie"){
        append_str <- "_bowtie";
    }else{
        stop("You need to specify a load type: pileup/bwa/bowtie")
    }
    
    del_str <- paste("DROP TABLE IF EXISTS cnv_",sample_name,append_str,"_pileup;",sep="");
    create_str <- paste("CREATE TABLE cnv_",sample_name,append_str,"_pileup(chr VARCHAR(32), pos INT, coverage INT, mapped_reads INT);",sep="");
    load_str <- paste("LOAD DATA LOCAL INFILE '",data_path,"' INTO TABLE cnv_",sample_name,append_str,"_pileup FIELDS TERMINATED BY '\t';",sep="");
    index_str <- paste("CREATE INDEX cnv_",sample_name,append_str,"_pileup_i1 ON cnv_",sample_name,append_str,"_pileup(chr,pos);",sep="");
    drop <- dbGetQuery(con, del_str);
    create <- dbGetQuery(con, create_str);
    load <- dbGetQuery(con, load_str);
    index <- dbGetQuery(con, index_str);
}

mysql_exon_bwa_bowtie <- function (con, sample_name){
    d1a <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_pileup;",sep="");
    drop1a <- dbGetQuery(con, d1a);
    q1a <- paste("CREATE TABLE cnv_",sample_name,"_exon_pileup AS ",sep="");
    q2a <- "SELECT DISTINCT A.*, coverage FROM ";
    q3a <- "tso_exon_contig_pileup A ";
    q4a <- "JOIN ";
    q5a <- paste("cnv_",sample_name,"_pileup B ",sep="");
    q6a <- "USING(chr,pos); ";
    load1a_str <- paste(q1a,q2a,q3a,q4a,q5a,q6a);
    load1a <- dbGetQuery(con, load1a_str);
    q7a <- paste("CREATE INDEX cnv_",sample_name,"_exon_pileup_1 ON cnv_",sample_name,"_exon_pileup(exon_contig_id);",sep="");
    index1a <- dbGetQuery(con, q7a);
    q8a <- paste("CREATE INDEX cnv_",sample_name,"_exon_pileup_2 ON cnv_",sample_name,"_exon_pileup(chr,pos);",sep="");
    index2a <- dbGetQuery(con, q8a);
    
    d1b <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_bwa;",sep="");
    drop1b <- dbGetQuery(con, d1b);
    q1b <- paste("CREATE TABLE cnv_",sample_name,"_exon_bwa AS ",sep="");
    q2b <- "SELECT DISTINCT A.*, coverage FROM ";
    q3b <- "tso_exon_contig_pileup  A ";
    q4b <- "JOIN ";
    q5b <- paste("cnv_",sample_name,"_bwa_pileup B ",sep="");
    q6b <- "USING(chr,pos);";
    load1b_str <- paste(q1b,q2b,q3b,q4b,q5b,q6b);
    load1b <- dbGetQuery(con, load1b_str);
    q7b <- paste("CREATE INDEX cnv_",sample_name,"_exon_bwa_1 ON cnv_",sample_name,"_exon_bwa(exon_contig_id);",sep="");
    index1b <- dbGetQuery(con, q7b);
    q8b <- paste("CREATE INDEX cnv_",sample_name,"_exon_bwa_2 ON cnv_",sample_name,"_exon_bwa(chr,pos);",sep="");
    index2b <- dbGetQuery(con, q8b);
    
    d1c <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_bowtie;",sep="");
    drop1c <- dbGetQuery(con, d1c);
    q1c <- paste("CREATE TABLE cnv_",sample_name,"_exon_bowtie AS ",sep="");
    q2c <- "SELECT DISTINCT A.*, coverage FROM ";
    q3c <- "tso_exon_contig_pileup A ";
    q4c <- "JOIN ";
    q5c <- paste("cnv_",sample_name,"_bowtie_pileup B ",sep="");
    q6c <- "USING(chr,pos); ";
    load1c_str <- paste(q1c,q2c,q3c,q4c,q5c,q6c);
    load1c <- dbGetQuery(con, load1c_str);
    q7c <- paste("CREATE INDEX cnv_",sample_name,"_exon_bowtie_1 ON cnv_",sample_name,"_exon_bowtie(exon_contig_id);",sep="");
    index1c <- dbGetQuery(con, q7c);
    q8c <- paste("CREATE INDEX cnv_",sample_name,"_exon_bowtie_2 ON cnv_",sample_name,"_exon_bowtie(chr,pos);",sep="");
    index2c <- dbGetQuery(con, q8c);
    
    d1d <- paste("DROP TABLE IF EXISTS cnv_",sample_name,"_exon_bwa_bowtie_ratio;",sep="");
    drop1d <- dbGetQuery(con, d1d);
    q1d <- paste("CREATE TABLE cnv_",sample_name,"_exon_bwa_bowtie_ratio AS ",sep="");
    q2d <- "SELECT DISTINCT A.chr, A.pos, (A.coverage/B.coverage) AS bowtie_bwa_ratio FROM ";
    q3d <- paste("cnv_",sample_name,"_exon_bowtie A ",sep="");
    q4d <- "JOIN ";
    q5d <- paste("cnv_",sample_name,"_exon_bwa B ",sep="");
    q6d <- "ON(A.chr = B.chr AND A.pos = B.pos);"
    load1d_str <- paste(q1d,q2d,q3d,q4d,q5d,q6d);
    load1d <- dbGetQuery(con, load1d_str);
    q7d <- paste("CREATE INDEX cnv_",sample_name,"_exon_bwa_bowtie_ratio_1 ON cnv_",sample_name,"_exon_bwa_bowtie_ratio(chr,pos);",sep="");
    index1d <- dbGetQuery(con, q7d);
}
piece.formula <- function(var.name, knots) {
# Code modified from http://rsnippets.blogspot.com/2013/04/estimating-continuous-piecewise-linear.html
    formula.sign <- rep(" - ", length(knots))
    formula.sign[knots < 0] <- " + "
    paste(var.name, "+",
		  paste("I(pmax(", var.name, formula.sign, abs(knots), ", 0))",
				collapse = " + ", sep=""))
}

cnv_lm_fit_gene_obsolete <- function (gene_symbol){
    image_name = paste(gene_symbol,".png",sep="");
    png(image_name, width=23, height=6, units="in", res=600)
    get_ref <- paste("SELECT DISTINCT ref_exon_contig_id FROM ",input_table," ORDER BY RAND() LIMIT 1;");
    i_ref <- dbGetQuery(con, get_ref);
    get_data <- paste("SELECT pos, A_over_B_ratio FROM ",input_table," WHERE ref_exon_contig_id = '",i_ref,"' AND gene_symbol = '",gene_symbol,"' ORDER BY  pos ASC;",sep="");
    i_data <- dbGetQuery(con, get_data);
    n =length(i_data[,1]);
    
    if(n < twice_seg_len){
        K = 1;
    }else{
        K = ceiling(n/twice_seg_len);
    }
    x <- seq(1,n,1);
    y = as.numeric(i_data[,2]);
    plot(x, y, col="green",  xlim=c(-1,n), ylim=c(-0.3,y_limit),xlab="chromosome position", ylab="ratio", title(main = gene_symbol));
    abline(h=0.5,col = "blue");
    abline(h=1,col = "blue", lty=2);
    knots <- seq(min(x), max(x), len = K + 2)[-c(1, K + 2)];
    model <- lm(formula(paste("y ~", piece.formula("x", knots))))
    points(knots, predict(model, newdata = data.frame(x = knots)), col = "blue", pch = "o",cex=2)
    y1 <- predict(model,newdata = data.frame(x));
    points(x,y1,pch="*",col="black");
    garbage <- dev.off ();
    median_abs_residual = median(abs(y-y1));
    
    update_residual_str <- paste(" UPDATE ",cnv_table," SET ",cnv_table,".median_abs_residual = ",median_abs_residual," WHERE gene_symbol = '",gene_symbol,"';",sep="");
    update_res <- dbGetQuery(con, update_residual_str);
}

cnv_lm_fit_gene <- function (gene_symbol){
    get_ref <- paste("SELECT DISTINCT ref_exon_contig_id FROM ",input_table," ORDER BY RAND() LIMIT 1;");
    i_ref <- dbGetQuery(con, get_ref);
	get_data <- paste("SELECT pos, A_over_B_ratio FROM ",input_table," WHERE ref_exon_contig_id = '",i_ref,"' AND gene_symbol = '",gene_symbol,"' ORDER BY  pos ASC;",sep="");
    i_data <- dbGetQuery(con, get_data);
    n =length(i_data[,1]);
	
	if(n < twice_seg_len){
		K = 1;
	}else{
		K = ceiling(n/twice_seg_len);
	}
    x <- seq(1,n,1);
    y = as.numeric(i_data[,2]);
    knots <- seq(min(x), max(x), len = K + 2)[-c(1, K + 2)];
    model <- lm(formula(paste("y ~", piece.formula("x", knots))))
    y1 <- predict(model,newdata = data.frame(x));
    median_abs_residual = median(abs(y-y1));
    
    update_residual_str <- paste(" UPDATE ",cnv_table," SET ",cnv_table,".median_abs_residual = ",median_abs_residual," WHERE gene_symbol = '",gene_symbol,"';",sep="");
    update_res <- dbGetQuery(con, update_residual_str);
}

cnv_lm_fit <- function (con, input_table, cnv_table, twice_seg_len){
    gene_symbol_str <- paste("SELECT DISTINCT gene_symbol FROM ",cnv_table,";",sep="");
	gene_symbol_array <- dbGetQuery(con, gene_symbol_str);
	gene_symbol_list <- gene_symbol_array[,1];
	x <- lapply(X=gene_symbol_list, FUN=cnv_lm_fit_gene);
}


cnv_median_window_coverage <- function (con, sample_table_name, output_table_name){
	
	drop_table_str <- paste("DROP TABLE IF EXISTS ",output_table_name,";",sep="");
	drop_table <- dbGetQuery(con, drop_table_str);
	
	create_table_str <- paste("CREATE TABLE ",output_table_name," AS SELECT gene_symbol, ref_exon_contig_id, window_id, -10000.000001 AS min_bowtie_bwa_ratio,
       -0.000001 AS max_bowtie_bwa_ratio, -10000.01 AS cnv_ratio FROM ",sample_table_name," WHERE 1 > 2;",sep="");
	create_table <- dbGetQuery(con, create_table_str);
	group_by_array_str <- paste("SELECT CONCAT(ref_exon_contig_id,'.',window_id) AS vals FROM (SELECT DISTINCT ref_exon_contig_id, window_id FROM  ",sample_table_name,") A;",sep="");
	group_by_array <- dbGetQuery(con, group_by_array_str);
	group_by_vals <- group_by_array[,1];
	x <- lapply(X=group_by_vals, FUN=cnv_window_coverage);
    
    index_str <- paste("CREATE INDEX ",output_table_name,"_1 ON ",output_table_name,"(window_id);",sep="");
    output_index <- dbGetQuery(con, index_str);
}

cnv_window_coverage <- function (vals){
	vals_vector <- unlist(strsplit(vals, "[.]"));
	ref_exon_contig_id_val <- vals_vector[1];
	window_id_val <- vals_vector[2];
	
	window_coverage_str = paste("SELECT DISTINCT gene_symbol, A_over_B_ratio, bowtie_bwa_ratio FROM ",sample_table_name," WHERE ref_exon_contig_id = '",
								ref_exon_contig_id_val,"' AND window_id ='",window_id_val,"' AND A_over_B_ratio IS NOT NULL AND bowtie_bwa_ratio IS NOT NULL;",sep="");
	window_coverage_data <- dbGetQuery(con, window_coverage_str);
	
    if(length(window_coverage_data) > 0){
        gene_symbol_val = window_coverage_data[1,1];
        window_coverage <- as.numeric(window_coverage_data[,2]);
        window_bowtie_bwa <- as.numeric(window_coverage_data[,3]);
    	
        cnv_ratio_val <-  median(window_coverage);
        min_bowtie_bwa_ratio_val <- min(window_bowtie_bwa);
        max_bowtie_bwa_ratio_val <- max(window_bowtie_bwa);
    
        insert_query_str <- paste("INSERT INTO ",output_table_name,"(gene_symbol,ref_exon_contig_id,window_id,cnv_ratio,min_bowtie_bwa_ratio,max_bowtie_bwa_ratio) VALUES('",gene_symbol_val,"','",ref_exon_contig_id_val,"','",window_id_val,"',",cnv_ratio_val,",",min_bowtie_bwa_ratio_val,",",max_bowtie_bwa_ratio_val,");",sep="");
        insert_query <- dbGetQuery(con, insert_query_str);
    }
	
}

cnv_normalize <- function (con, norm_input,norm_output){
	ref_array_str <- paste("SELECT DISTINCT ref_exon_contig_id FROM  ",norm_input,";",sep="");
	ref_array <- dbGetQuery(con, ref_array_str);
	ref <- ref_array[,1];
	x <- lapply(X=ref, FUN=cnv_normalize_one_ref);
    
    index_str <- paste("CREATE INDEX ",norm_output,"_i ON ",norm_output,"(ref_exon_contig_id, gene_symbol);",sep="");
    norm_output_index <- dbGetQuery(con, index_str);

}

cnv_normalize_one_ref <- function(ref){
    panel_cov_str = paste("SELECT A_over_B_ratio FROM  ",norm_input," WHERE ref_exon_contig_id = '",ref,"' AND A_over_B_ratio > 0.5 AND A_over_B_ratio < 2 AND bowtie_bwa_ratio > 0.8 AND bowtie_bwa_ratio < (10/8);",sep="");
	panel_cov = dbGetQuery(con, panel_cov_str);
	ratio = as.numeric(panel_cov[,1]);
	avg_log2 = mean(log2(ratio));
	
	data_values_str = paste("SELECT chr,pos,ref_exon_contig_id,A_over_B_ratio,bowtie_bwa_ratio,gene_symbol FROM  ",norm_input," WHERE ref_exon_contig_id = '",ref,"';",sep="");
	data_values = dbGetQuery(con,data_values_str);
	data_values[,4] <- 2^(log2(as.numeric(data_values[,4])) - avg_log2);
	
	ans <- data.frame(data_values);
    dbWriteTable(con, norm_output, ans, append=TRUE,row.names=FALSE);
}

cnv_smooth_gene <- function(gene_ref){
	gene_ref_vector <- unlist(strsplit(gene_ref, "[.]"));
	ref <- gene_ref_vector[1];
	gene <- gene_ref_vector[2];
	
	input_table_str <- paste("SELECT DISTINCT gene_symbol, ref_exon_contig_id , chr, pos, A_over_B_ratio, bowtie_bwa_ratio FROM  ",
							 out_input," WHERE ref_exon_contig_id = '",ref,"' AND gene_symbol  ='",gene,"' ORDER BY chr, pos ASC;",sep="");
	input_table <- dbGetQuery(con, input_table_str);
	
	gene_symbol <- input_table[,1];
	ref_exon_contig_id <- input_table[,2];
	chr <- input_table[,3];
	pos <- input_table[,4];
	gene_length <- length(pos);
	
	if(window_length >= (gene_length/4)){
		window_length = round(gene_length/4);
	}
	
	A_over_B_ratio <- rollmean(input_table[,5],window_length,na.pad=TRUE,na.fill="extend",align=c("left"));
    A_over_B_ratio[is.na(A_over_B_ratio)] <- A_over_B_ratio[max(which(!is.na(A_over_B_ratio)))];
    
	bowtie_bwa_ratio <- rollmean(input_table[,6],window_length,na.pad=TRUE,na.fill="extend",align=c("left"));
    bowtie_bwa_ratio[is.na(bowtie_bwa_ratio)] <- bowtie_bwa_ratio[max(which(!is.na(bowtie_bwa_ratio)))];
    
	output = cbind(gene_symbol,ref_exon_contig_id,chr,pos,A_over_B_ratio,bowtie_bwa_ratio);
	ans <- data.frame(output);
    dbWriteTable(con, out_output, ans, append=TRUE,row.names=FALSE);
}

cnv_smooth_coverages<- function (con, out_input, out_output, window_length){
	gene_ref_array_str <- paste("SELECT CONCAT(ref_exon_contig_id,'.',gene_symbol) AS gene_ref FROM (SELECT DISTINCT ref_exon_contig_id,gene_symbol FROM  ",out_input,") A;",sep="");
	gene_ref_array <- dbGetQuery(con, gene_ref_array_str);
	gene_ref <- gene_ref_array[,1];
	x <- lapply(X=gene_ref, FUN=cnv_smooth_gene);
    
    out_index_str <- paste("CREATE INDEX ",out_output,"_i ON ",out_output,"(ref_exon_contig_id, gene_symbol);",sep="");
    out_output_index <- dbGetQuery(con, out_index_str);
}

cnv_plot_all_screen <- function (con, input_table, pos, filter_column1, filter_value1, data_column1, y_limit, title_label){
		
	get_ref_exon_contig_id <- paste("SELECT DISTINCT ref_exon_contig_id FROM ",input_table," WHERE ",filter_column1," = '",filter_value1,"';",sep="");
	i_ref_exon <- dbGetQuery(con, get_ref_exon_contig_id);
	n1 =length(i_ref_exon[,1]);
	
	for(j in 1:n1){
		filter_value2 = i_ref_exon[j,1]
		get_data <- paste("SELECT DISTINCT ",pos,", ",data_column1," FROM ",input_table," WHERE ",filter_column1," = '",filter_value1,"' AND ref_exon_contig_id = '",
						  filter_value2,"' ORDER BY ",pos," ASC;",sep="");
		
		i_data <- dbGetQuery(con, get_data);
		n =length(i_data[,1]);
		num_exon = 0;
		
		if (length(i_data) < 1){
# empty array
		}else{
			n =length(i_data[,1]);
			
			if(j == 1){
				dev.new(width=11, height=6);
				plot(0, 0.07,pch = "o", col="blue",  xlim=c(-0.08,n), ylim=c(-0.08,y_limit),xlab="chromosome position", ylab="ratio", title(main = title_label));
				abline(h=0.5,col = "blue");
                abline(h=0.4,col = "blue");
                abline(h=0.3,col = "blue");
                abline(h=0.2,col = "blue");
                abline(h=0.1,col = "blue");
				abline(h=1,col = "blue", lty=2)
				textxy(0, 0, num_exon);
			}
			for(i in 2:n){
				data_value1 = as.numeric(i_data[i,2]);
				data_value2 = as.numeric(i_data[i,3]);
				points(i, data_value1, pch = "+", col=j);
				if((as.numeric(i_data[i,1]) - as.numeric(i_data[(i-1),1])) > 1){
					num_exon = num_exon + 1;
					textxy(i, 0, num_exon);
					points(i,0.07, pch = "o", col="blue");  
				}
			}
		}
	}
}



cnv_plot_all <- function (con, input_table, pos, filter_column1, filter_value1, data_column1, y_limit, title_label, dir_path){
	image_name = paste(title_label,".png",sep="");
	setwd(dir_path);
	png(image_name, width=23, height=6, units="in", res=600)
	
	get_ref_exon_contig_id <- paste("SELECT DISTINCT ref_exon_contig_id FROM ",input_table," WHERE ",filter_column1," = '",filter_value1,"';",sep="");
	i_ref_exon <- dbGetQuery(con, get_ref_exon_contig_id);
	n1 =length(i_ref_exon[,1]);
	
	for(j in 1:n1){
		filter_value2 = i_ref_exon[j,1]
		get_data <- paste("SELECT DISTINCT ",pos,", ",data_column1," FROM ",input_table," WHERE ",filter_column1," = '",filter_value1,"' AND ref_exon_contig_id = '",
					  filter_value2,"' ORDER BY ",pos," ASC;",sep="");
	
		i_data <- dbGetQuery(con, get_data);
		n =length(i_data[,1]);
		num_exon = 0;
	
		if (length(i_data) < 1){
			# empty array
		}else{
			n =length(i_data[,1]);
			
			if(j == 1){
				plot(0, 0.07, pch = "o", col="blue",  xlim=c(-0.08,n), ylim=c(-0.08,y_limit),xlab="chromosome position", ylab="ratio", title(main = title_label));
                abline(h=0.5,col = "blue");
                abline(h=0.4,col = "blue");
                abline(h=0.3,col = "blue");
                abline(h=0.2,col = "blue");
                abline(h=0.1,col = "blue");
				abline(h=1,col = "blue", lty=2)
				textxy(0, 0, num_exon);
			}
			for(i in 2:n){
				data_value1 = as.numeric(i_data[i,2]);
				data_value2 = as.numeric(i_data[i,3]);
				points(i, data_value1, pch = "+", col=j);
				if((as.numeric(i_data[i,1]) - as.numeric(i_data[(i-1),1])) > 1){
					num_exon = num_exon + 1;
					textxy(i, 0, num_exon);
					points(i,0.07, pch = "o", col="blue");  
				}
			}
		}
	}
	garbage <- dev.off ();
}

cnv_plot_all_bowtie_bwa <- function (con, input_table, pos, filter_column1, filter_value1, data_column1, bowtie_bwa_ratio, y_limit, title_label){
    
	get_ref_exon_contig_id <- paste("SELECT DISTINCT ref_exon_contig_id FROM ",input_table," WHERE ",filter_column1," = '",filter_value1,"';",sep="");
	i_ref_exon <- dbGetQuery(con, get_ref_exon_contig_id);
	n1 =length(i_ref_exon[,1]);
	
	for(j in 1:n1){
		filter_value2 = i_ref_exon[j,1]
		get_data <- paste("SELECT DISTINCT ",pos,", ",data_column1,",",bowtie_bwa_ratio," FROM ",input_table," WHERE ",filter_column1," = '",filter_value1,"' AND ref_exon_contig_id = '",
						  filter_value2,"' ORDER BY ",pos," ASC;",sep="");
		
		i_data <- dbGetQuery(con, get_data);
		n =length(i_data[,1]);
		num_exon = 0;
		xmin = min(as.numeric(i_data[,1]));
		xmax = max(as.numeric(i_data[,1]));
		x_min = xmin-5;
		x_max = xmax+5;
		
		if (length(i_data) < 1){
            # empty array
		}else{
			n =length(i_data[,1]);
			
			if(j == 1){
                # plot(0, 0.07, pch = "o", col="blue",  xlim=c(-1,n), ylim=c(-0.3,y_limit),xlab="chromosome position", ylab="ratio", title(main = title_label));
                plot(0, 0.07, pch = "o", col="white",  xlim=c(-1,n), ylim=c(-0.3,y_limit),xlab="chromosome position", ylab="ratio", title(main = title_label));
                abline(h=0.5,col = "blue");
                abline(h=0.4,col = "blue");
                abline(h=0.3,col = "blue");
                abline(h=0.2,col = "blue");
                abline(h=0.1,col = "blue");
				abline(h=1,col = "blue", lty=2)
                # textxy(0, 0, num_exon);
			}
			altPlot=1;
			for(i in 2:n){
				data_value1 = as.numeric(i_data[i,1]);
				data_value2 = as.numeric(i_data[i,2]);
				data_value3 = as.numeric(i_data[i,3]);
				points(i, data_value2, pch = "+", col=j);
				points(i, data_value3, pch = "*", col="red");
				
				if((as.numeric(i_data[i,1]) - as.numeric(i_data[(i-1),1])) > 1){
					num_exon = num_exon + 1;
                    # textxy(i, 0, num_exon);
					if(altPlot == 1){
						textxy(i, -0.1, data_value1);
						altPlot = -1;
					}else{
					   textxy(i, -0.2, data_value1);
						altPlot = 1;
					}
					
                    #points(i,0.07, pch = "o", col="blue");
				}
			}
		}
	}
}



cnv_plot_screen <- function (con, input_table, pos, filter_column1, filter_value1, filter_column2, filter_value2, data_column1, data_column2, y_limit, color1, color2, title_label,ref,normal_region){

	get_data <- paste("SELECT DISTINCT ",pos,", ",data_column1,", ",data_column2," FROM ",input_table," WHERE ",filter_column1," = '",filter_value1,"' AND ",filter_column2," = '",
					  filter_value2,"' ORDER BY ",pos," ASC;",sep="");
	i_data <- dbGetQuery(con, get_data);
	
	ref_vector = unlist(strsplit(ref, "[:]"));
	chr = ref_vector[1];
	range_vector = unlist(strsplit(ref_vector[2], "[-]"));
	start = as.numeric(range_vector[1]);
	end = as.numeric(range_vector[2]);
	
	norm_vector = unlist(strsplit(normal_region, "[:]"));
	n_chr = norm_vector[1];
	n_range_vector = unlist(strsplit(norm_vector[2], "[-]"));
	n_start = as.numeric(n_range_vector[1]);
	n_end = as.numeric(n_range_vector[2]);
	
	get_norm_data <- paste("SELECT DISTINCT pos, A_over_B_ratio FROM ",input_table," WHERE ref_exon_contig_id = '",ref,"' AND chr = '",n_chr,"' AND pos >= ",n_start," AND pos <= ",n_end," ORDER BY pos ASC;",sep="");
	norm_data <- dbGetQuery(con, get_norm_data);
	
	n =length(i_data[,1]);
	m =length(ref_data[,1]);
	t =length(norm_data[,1]);
	
	j = n+10;
	k = j + m;
	l = k+10;
	p = l + t;
	num_exon = 0;
	
	
	dev.new(width=22, height=6);
	plot(0, 0.07, pch = "o", col="blue",  xlim=c(-0.08,k), ylim=c(-0.08,y_limit),xlab="chromosome position", ylab="ratio", title(main = title_label));
	abline(h=0.5,col = "blue");
	abline(h=1,col = "blue", lty=2)
	textxy(0, 0, num_exon);
	
	if (length(i_data) < 1){
      # empty array
	}else{
		for(i in 2:n){
			data_value1 = as.numeric(i_data[i,2]);
			data_value2 = as.numeric(i_data[i,3]);
			points(i, data_value1, pch = "+", col=color1);
			points(i, data_value2, pch = "+", col=color2);
			if((as.numeric(i_data[i,1]) - as.numeric(i_data[(i-1),1])) > 1){
				num_exon = num_exon + 1;
				textxy(i, 0, num_exon);
				points(i,0.07, pch = "o", col="blue");  
			}
		}
		
		for(i in n:j){
			points(i,0.07, pch = "o", col="white");
		}
		
		for(i in 1:m){
			ref_value = as.numeric(ref_data[i,2]);
			x_val = j+i;
			points(x_val, ref_value, pch = "o", col=color1);
		}
		
		for(i in k:l){
			points(i,0.07, pch = "o", col="white");
		}
		
		for(i in 1:t){
			norm_value = as.numeric(norm_data[i,2]);
			norm_x = l+i;
			points(norm_x,norm_value, pch = "*", col=color1);
		}
		
	}
	
}



cnv_plot <- function (con, input_table, pos, filter_column1, filter_value1, filter_column2, filter_value2, data_column1, data_column2, y_limit, color1, color2, title_label, dir_path){
	image_name = paste(title_label,".png",sep="");
	setwd(dir_path);
	
	get_data <- paste("SELECT DISTINCT ",pos,", ",data_column1,", ",data_column2," FROM ",input_table," WHERE ",filter_column1," = '",filter_value1,"' AND ",filter_column2," = '",
					  filter_value2,"' ORDER BY ",pos," ASC;",sep="");
	i_data <- dbGetQuery(con, get_data);
	n =length(i_data[,1]);
	num_exon = 0;
	
	png(image_name, width=23, height=6, units="in", res=600)
	plot(0, 0.07, pch = "o", col="blue",  xlim=c(-0.08,n), ylim=c(-0.08,y_limit),xlab="chromosome position", ylab="ratio", title(main = title_label));
	abline(h=0.5,col = "blue");
	abline(h=1,col = "blue", lty=2)
	textxy(0, 0, num_exon);
	
	if (length(i_data) < 1){
# empty array
	}else{
		n =length(i_data[,1]);
		for(i in 2:n){
			data_value1 = as.numeric(i_data[i,2]);
			data_value2 = as.numeric(i_data[i,3]);
			points(i, data_value1, pch = "+", col=color1);
			points(i, data_value2, pch = "+", col=color2);
			if((as.numeric(i_data[i,1]) - as.numeric(i_data[(i-1),1])) > 1){
				num_exon = num_exon + 1;
				textxy(i, 0, num_exon);
				points(i,0.07, pch = "o", col="blue");  
			}
		}
	}
	garbage <- dev.off ();
}

cnv_median_exon_coverage <- function (con, sample_table_name, reference_table_name, output_table_name, contig_label){
	
	drop_table_str <- paste("DROP TABLE IF EXISTS ",output_table_name,";",sep="");
	drop_table <- dbGetQuery(con, drop_table_str);
	
	create_table_str <- paste("CREATE TABLE ",output_table_name," AS SELECT ",contig_label,", chr, pos, coverage  FROM ",sample_table_name," WHERE 1 > 2;",sep="");
	create_table <- dbGetQuery(con, create_table_str);
	
	
	contig_array_str <- paste("SELECT  DISTINCT ",contig_label," FROM  ",reference_table_name,";",sep="");
	contig_array <- dbGetQuery(con, contig_array_str);
	n =length(contig_array[,1]);
	
	for(i in 1:n){
		contig_id = contig_array[i,1];
		contig_coverage_str = paste("SELECT chr, pos, coverage FROM ",sample_table_name," WHERE ",contig_label," = '",contig_id,"';",sep="");
		contig_coverage_data <- dbGetQuery(con, contig_coverage_str);
		contig_coverage <- contig_coverage_data[,3];
# We want the index for median coverage so we can retrieve other details such as the chromosome position for that coverage. 
# To retrieve the index, we are using the (which) command that requires us to know the median value. If the array has an 
# even number of elements, no index will contain the median since the median is the average of the two middle numbers. To get 
# around this, we add 1 at the end of the array which will guarantee the array will have an element with the median value. 
		
		if((length(contig_coverage) %% 2) == 0){
			contig_coverage[(length(contig_coverage) + 1)] <- 1;
		}
		
		index_median <- which(contig_coverage == median(contig_coverage));
		chr <- contig_coverage_data[index_median,1];
		pos <- contig_coverage_data[index_median,2];
		median_coverage <- contig_coverage_data[index_median,3];
		output_str <- paste(contig_id," ",chr," ",pos," ",median_coverage);
		
		insert_query_str <- paste("INSERT INTO ",output_table_name," VALUES('",contig_id,"','",chr,"',",pos,",",median_coverage,");",sep=""); 
		insert_query <- dbGetQuery(con, insert_query_str);
	}
}

