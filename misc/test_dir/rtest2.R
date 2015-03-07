#!/usr/bin/Rscript
# Import some required libraries
library('getopt');
 
# Make an option specification, with the following arguments:
# 1. long flag
# 2. short flag
# 3. argument type: 0: No argument, 1: required, 2: optional
# 4. target data type
option_specification = matrix(c(
  'outdir', 'f', 2, 'character',
  'htmlfile', 'h', 2, 'character'
), byrow=TRUE, ncol=4);
 
# Parse options
options = getopt(option_specification);
 
# Create some simple test data
x = seq(0,10,1);
y = x * 10;
 
if (!is.null(options$outdir)) {
  # Create the directory
  dir.create(options$outdir,FALSE)
}
 
# Strip whitespace
pdffile <- gsub("[ ]+", "", paste(options$outdir,"/pdffile.pdf"))
htmlfile <- gsub("[ ]+", "", paste(options$htmlfile))
 
# Produce PDF file
pdf(pdffile);
pdffile=plot(x, y);
garbage <- dev.off();
 
# Produce the HTML file
htmlfile_handle <- file(htmlfile)
html_output = c('<html><body>',
                '<a href="pdffile.pdf"> pngfileName </a>',
                '</html></body>');
writeLines(html_output, htmlfile_handle);
close(htmlfile_handle);
