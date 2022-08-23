**VA Data Commons**
===================

The Veterans Affairs (VA) Data Commons supports the research and
analysis of US military Veteran medical and genomic data and aims to
accelerate scientific discovery and development of therapies, diagnostic
tests, and other technologies for improving the lives of Veterans and
beyond. The data commons supports cross-project analyses by harmonizing
data from different projects through the collaborative development of a
data dictionary, providing an API for data queries, and providing a
cloud-based analysis workspace with rich tools and resources.

Table of Content
----------------

-  `VA Data Commons <#va-data-commons>`__

   -  `Table of Content <#table-of-content>`__

-  `Getting Started <#getting-started>`__

   -  `Login Page <#login-page>`__

      -  `VA Data Commons
         Documentation <#va-data-commons-documentation>`__
      -  `Email Support <#email-support>`__

   -  `Profile Page <#profile-page>`__

      -  `API key(s) <#api-keys>`__

-  `Data Access and Analysis <#data-access-and-analysis>`__

   -  `Workspace <#workspace>`__
   -  `Apps <#apps>`__

      -  `OHDSI Atlas <#ohdsi-atlas>`__
      -  `Gen3 GWAS <#gen3-gwas>`__
      -  `GWAS for quantitative
         phenotype <#gwas-for-quantitative-phenotype>`__
      -  `GWAS for a case-control
         study <#gwas-for-a-case-control-study>`__

Getting Started
===============

**Login Page**
--------------

Users will login with their VA PIV credentials. Start by visiting the
login page (https://va.data-commons.org/login) and sign in with your
organizational account. After successfully logging in, your username
will appear in the upper right-hand corner of the page. Click this link
for more information about using the PIV login.

Once logged in, the user will see there are several options in the upper
right hand corner of the screen. In the blue bar at the top of the page,
there is a link to VA Data Commons Documentation (the page you are
currently reading), Email Support, your username and a log out button.
Below these options, there are tabs for the Workspace, the Apps, and the
Profile pages. Clicking on the VA Data Commons logo in the upper left
hand corner of the screen will always return you to the home page of the
data commons.

**VA Data Commons Documentation**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The button for VA Data Commons Documentation takes you to this page.

**Email Support**
~~~~~~~~~~~~~~~~~

If you need help, the Email Support button allows you to send a message
to our help desk at support@datacommons.io. You may expect a responce
within 2 buisness days.

**Profile Page**
----------------

On the Profile page you can create and save your API key.

**API key(s)**
~~~~~~~~~~~~~~

To download large amounts of data, an API key will be required as a part
of the gen3-client . To create a key on your local machine, click Create
API key, which will activate a pop-up window.

Click Download json to save the credential file to your local machine.
After completion, a new entry will appear in the API key(s) section of
the Profile page. It will display the API key key_id and the expiration
date (one month after the key creation). The user should delete the key
after it has expired and create a new key. If for any reason a user
feels that their API key has been compromised, the key should be deleted
before subsequently creating a new one.

Data Access and Analysis
========================

**Workspace**
-------------

Workspaces are secure data analysis environments in the cloud that can
access data from one or more data resources. By default, Workspaces
include Jupyter notebooks and JupyterLab, Python and RStudio, but can be
configured to host virtually any application, including analysis
workflows, data processing pipelines, or data visualization apps.

New to Jupyter? Learn more about the popular tool for data scientists on
Jupyter.org (disclaimer: CTDS is not responsible for the content).

There are five workspace options available. The options include two
versions of Jupyter Notebook Bio Python/R which employ the classic
Jupyter Notebook in two different sizes (one large, 4.0 CPU, 8192 Mi
memory, and one small, 0.5 CPU, 512 Mi memory), two versions of Jupyter
Notebook Bio Python/R (Lab Edition) which opens JupyterLab, the latest
interactive development environment for notebooks, code and data also
with the option of two sizes (one large and one small), and one
workspace option with R Studio. Click “Launch” to spin up a copy of that
VM. Launching may take several minutes depending on the size and
complexity of the workspace.

Once the VM is ready, the initial screen for the workspace will appear.
After launching, the home folders are displayed, one of which is the
user’s persistent drive (“pd”). For scripts and output that need to be
saved when the workspace is terminated, store those files in the pd/
directory. Only files saved in the /pd directory will remain available
after termination of a workspace session.

Start a new notebook by clicking “New” in the top right corner and
choose between Python 3 or R Studio as the base programmatic language.
Code blocks are entered in cells, which can be executed individually or
all at once. Code documentation and comments can also be entered in
cells, and the cell type can be set to support Markdown.

Results, including plots, tables, and graphics, can be generated in the
workspace and downloaded as files. Only files saved in the /pd directory
will remain available after termination of a workspace session.

Do not forget to terminate your workspace once your work is finished to
be mindful of the cost-intensive computational effort. Note, that
Workspaces automatically shut down after 15 minutes of idle time.

For more information about the Gen3 Workspace, refer to Data Analysis in
a Gen3 Data Commons.

**Apps**
--------

The Apps page displays the option of two apps, OHDSI Atlas and Gen3
GWAS. Using these Apps, a user may perform a genomic analysis on
available data from projects that they have access to.

**OHDSI Atlas**
~~~~~~~~~~~~~~~

ATLAS is an open source software application developed as a part of
OHDSI community intended to provide a unified interface to patient level
data and analytics.

ATLAS currently includes functionality for searching and navigating the
vocabulary within the OMOP Common Data Model (CDM). In addition to the
search and navigation capabilities, It also provides features to curate
and export custom sets concept identifiers for use in cohort
definitions. These will automatically populate on the Gen3 GWAS App. In
general, ATLAS is an analytics platform that can be used to perform
analyses across one or more observational databases which have been
standardized to the OMOP Common Data Model V5 and can facilitate
exchange of analysis designs with any other organizations across the
OHDSI community.

The ATLAS user guide can be found here. (disclaimer: CTDS is not
responsible for the content).

**Gen3 GWAS**
~~~~~~~~~~~~~

Use this app to perform a high throughput GWAS on MVP data using the
University of Washington Genesis pipeline.

Genome-wide association studies (GWAS) help scientists identify genes
associated with a particular disease (or another trait). This method
studies the entire set of DNA (the genome) of a large group of people,
searching for small variations, called single nucleotide polymorphisms
or SNPs (pronounced “snips”).

Here, we offer two types of GWAS analysis-

**Genome-wide association studies (GWAS) for quantitative phenotype.**
Here, GWAS evaluates statistical association between genetic variation
and a continuous phenotype. A phenotype, also called a trait, can be any
measured or observed property of an individual.

**Genome-wide association studies (GWAS) for a case-control study.**
Here, the genotypes of roughly equal number of diseased (“cases”) and
healthy (“controls”) people are compared to determine which genetic
variants are associated with the disease. Cases are encoded as ‘1’ while
controls are encoded as ‘0’ and a binary model is used.

Each of these Gen3 GWAS options are available through the GWAS App, and
consist of several steps. To navigate between the steps- Click the Next
or Previous box in the lower corners of the screen.

When entering the App, a user must first select the type of GWAS from
the choices in the box on the screen.

**GWAS for quantitative phenotype**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Step 1**

In this step, you will determine the study population. To begin, select
the cohort that you would like to define your study population with. You
may only see cohorts that you have access to. Please select only one
cohort. The size of the cohort population is indicated in the right hand
side of the table. To browse the table please scroll down to the bottom.

You may also see a button to create a new cohort. This button will open
a new tab in your browser, outside of the Gen3 GWAS App and send you to
OHDSI Atlas App.

**Step 2**

In this step, you will select the harmonized variables for your study.
Please select all variables you wish to use in your model, including
both covariates and phenotype. (Note- population PCs are not included in
this step)

Please choose as many variables as you wish, you may remove them later
in the pipeline. Currently, only continuous variables can be selected.
All variables are harmonized. To browse the table please scroll down to
the bottom.

**Step 3**

In this Step, you will determine your phenotype, using the selected
variables from Step 2. Please choose one of the selected variables to be
the study’s phenotype.

Here you may choose your phenotype. All data are harmonized from
different projects through the collaborative development of a data
dictionary. In the right hand side of the table a missing % is
calculated. This is to reflect how many subjects of the chosen
population do not have this information available. To browse the table
please scroll down to the bottom.

**Step 4**

In this step, you will determine workflow parameters. Please adjust the
number of population principal components to control for population
structure, minor allele frequency cutoff and imputation score cutoff.
You may also remove unwanted covariates. Please also choose the ancestry
population on which you would like to perform your study.

Number of PCs- Population Principal components (PCs) refer to linear
combinations of genome-wide genotyping data to control for population
structure/stratification (select up to 10 PCs)

Covariates- Please review the chosen covariates. You may remove unwanted
covariates, or go back (at the bottom of the page) to step 2 to choose
different ones.

Phenotype- Please see here the phenotype chosen in step 3. To adjust
please go back (at the bottom of the page) to step 3 to choose a
different one.

MAF Cutoff- Minor allele frequency (MAF) is the frequency at which the
second most common allele occurs in a given population and can be used
to filter out rare markers (scale of 0-0.5)

HARE dropdowns- Please choose the ancestry population on which you would
like to perform your study. The numbers appearing in the dropdown
represent the population size of your study, considering all of your
previous selections. The codes are the HARE (harmonized ancestry and
race/ethnicity) codes.

Imputation Score Cutoff- This value reflects the quality of imputed SNPs
and can be used to remove low-quality imputed markers (scale of 0-1)

**Step 5**

In this step, you may review the metadata selected for the study, give a
name to the study, and submit the GWAS for analysis.

**Check Submission Status**

Once your GWAS analysis is submitted, click the arrow in the **Submitted
Job Statuses** box to activate the drop down menu and see the status of
your analysis. This menu will display a history of your submitted jobs
including the Run ID of your analysis, the user given name of the
anaylsis, the start time, and the finish time when the run is completed.
This menu will also display whether the analysis was a success or
failed. Once completed, you may download the results of the GWAS
analysis from this menu. In pressing the ‘Download’ link a tar.gz file
will start downloading to your computer. The file contains the
following: Manhattan plot, QQ plot, metadata file containing all of your
selections, attrition table, and per-chromosome GWAS summary statistics.

**GWAS for a case-control study**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Step 1**

In this step, you will begin to define the study population. To begin,
select the cohort that you would like to define as your study “cases”
population. You may only see cohorts that you have access to. Please
select only one cohort. The size of the cohort population is indicated
in the right hand side of the table. To browse the table please scroll
down to the bottom.

You may also see a button to create a new cohort. This button will open
a new tab in your browser, outside of the Gen3 GWAS App and send you to
OHDSI Atlas App.

**Step 2**

In this step, you will continue to define the study population. Please
select the cohort that you would like to define as your study “control”
population. You may only see cohorts that you have access to. Please
select only one cohort. The size of the cohort population is indicated
in the right hand side of the table. To browse the table please scroll
down to the bottom.

You may also see a button to create a new cohort. This button will open
a new tab in your browser, outside of the Gen3 GWAS App and send you to
OHDSI Atlas App.

**Step 3**

In this step, you will select covariates for your study. Please choose
as many covariates as you wish, you may remove them later in the
pipeline. Currently, only continuous covariates can be selected. All
variables are harmonized. To browse the table please scroll down to the
bottom.

**Step 4**

In this step, you can review the covariates selection based on % missing
metrics. To adjust covariates please return to Step 3.

**Step 5**

In this step, you will determine workflow parameters. Please adjust the
number of population principal components to control for population
structure, minor allele frequency cutoff and imputation score cutoff.
You may also remove unwanted covariates. Please also choose the ancestry
population on which you would like to perform your study.

Number of PCs- Population Principal components (PCs) refer to linear
combinations of genome-wide genotyping data to control for population
structure/stratification (select up to 10 PCs)

Covariates- Please review the chosen covariates. You may remove unwanted
covariates, or go back (at the bottom of the page) to step 2 to choose
different ones.

Phenotype- Please see here the phenotype chosen in step 3. To adjust
please go back (at the bottom of the page) to step 3 to choose a
different one.

MAF Cutoff- Minor allele frequency (MAF) is the frequency at which the
second most common allele occurs in a given population and can be used
to filter out rare markers (scale of 0-0.5)

HARE dropdowns- Please choose the ancestry population on which you would
like to perform your study. The numbers appearing in the dropdown
represent the population size of your study, considering all of your
previous selections. The codes are the HARE (harmonized ancestry and
race/ethnicity) codes.

Imputation Score Cutoff- This value reflects the quality of imputed SNPs
and can be used to remove low-quality imputed markers (scale of 0-1)

**Step 6**

In this step, you may review the metadata selected for the study, give a
name to the study, and submit the GWAS for analysis.

**Check Submission Status**

Once your GWAS analysis is submitted, click the arrow in the **Submitted
Job Statuses** box to activate the drop down menu and see the status of
your analysis. This menu will display a history of your submitted jobs
including the Run ID of your analysis, the start time, and the finish
time when the run is completed. This menu will also display whether the
analysis was a success or failed. Once completed, you may download the
results of the GWAS analysis from this menu. In pressing the ‘Download’
link a tar.gz file will start downloading to your computer. The file
contains the following: Manhattan plot, QQ plot, metadata file
containing all of your selections, attrition table, and per-chromosome
GWAS summary statistics.
