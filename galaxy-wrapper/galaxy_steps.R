Starting Galaxy
> cd galaxy-dist

> sh run.sh 

Go to: http://127.0.0.1:8080

- Once Galaxy is up and running, create a user under "User" -> "Register" tab

- passwd = "jxxk_xx"

- public name = "onson001"

# Make user an admin

cd config/

cp galaxy.ini.sample galaxy.ini

- To give that user admin priviledges, add their email to the "galaxy.ini" file
"admin_users = onson001@umn.edu"


# ADDING A TOOL
# INSTRUCTIONS FOLLOWED FROM (https://wiki.galaxyproject.org/Admin/Tools/AddToolTutorial)

# 1) Create Tool Definition File:

test_run_main.xml

# 2) Put tool and definition file into Galaxy's tools directory:
cd /Users/onson001/Desktop/galaxy-dist/tools/myTools

cp /Users/onson001/Desktop/NGS/cnv/cnv-beta/test_run_main.* .

# 3) Make Galaxy aware of new tool by adding a section in the file below

emacs /Users/onson001/Desktop/galaxy-dist/config/tool_conf.xml.sample

<section name="MyTools" id="mTools">
<tool file="myTools/test_run_main.xml" />
</section>

# 4) Re-start Galaxy


# HERE


<inputs>
<param name="sample_name" type="text"  value="11_05910" label="Name of Sample" />
<param name="c_sample_name" type="text"  value="07_2151" label="Name of Control Sample" />
<param name="out_dir" type="text"  value="/Users/onson001/Desktop/NGS/cnv/cnv-beta/out" label="Directory to store files" />
<param name="db_h" type="text"  value="localhost" label="MySQL hostname" />
<param name="db_u" type="text"  value="onson001" label="MySQL username" />
<param name="db_p" type="text"  value="masara15" label="MySQL password" />
<param name="db_d" type="text"  value="fairview_2013_09_25" label="MySQL database" />
</inputs>

# Produce the HTML file
htmlfile_handle <- file(htmlfile)
html_output = c('<html><body>',
'<a href="CoveragePlots.pdf"> <br> Coverage Plots</br> </a>',
'<a href="cnv.txt"> <br> Copy Number Deletions</br> </a>',
'<a href="raw_data.txt"> <br> Raw Data </br> </a>',
'</html></body>');
writeLines(html_output, htmlfile_handle);
close(htmlfile_handle);

if (!is.null(opt$out_dir)) {
    # Create the directory
    dir.create(opt$out_dir,FALSE)
}









# Create dependency folder

> mkdir dependency_dir under "galaxy-dist"

# Set up dependency folder by adding the following line in "universe_wsgi.ini". There should be a parameter "tool_dependency_dir = None" 
# that can be uncommented and used 

"tool_dependency_dir = dependency_dir"

