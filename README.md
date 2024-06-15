Reproducible Research Project Initialization
=======

Research project initialization and organization following reproducible research guidelines.

Overview
--------

    project
    |- doc/            # documentation for the study
    |  +- paper/       # manuscript(s), whether generated or not
    |
    |- data            # raw and primary data, are not changed once created 
    |  |- raw/         # raw data, will not be altered
    |  +- clean/       # cleaned data, will not be altered once created
    |
    |- code/           # any programmatic code
    |- results         # all output from workflows and analyses
    |  |- figures/     # graphs, likely designated for manuscript figures
    |  +- pictures/    # diagrams, images, and other non-graph graphics
    |
    |- scratch/        # temporary files that can be safely deleted or lost
    |- README          # the top level description of content


Key concepts and goals
----------------------

See [Noble 2009] for a full description of and argument for the principle template structure. Some concepts and goals that guided this work:
* (Good) There is a folder for the raw data, which do not get altered, or intermixed with data that is the result of manual or programmatic manipulation. I.e., derived data is kept separate from raw data, and raw data are not duplicated.
* (Good) Code is kept separate from data.
* (Better) Manuscript production output is kept separate from everything else.
* (Good) There is a scratch directory for experimentation. Everything in the scratch directory can be deleted at any time without negative impact. 
* (Better) There should be a `README` in evey directory, describing the purpose of the directory and its contents.
* (Best) There is a top-level `Makefile` or [Rmarkdown] file that documents the computational study in executable form. Those files may call out to other `Makefile`'s or `.Rmd` files in subdirectories.
* (Best) There is a formal metadata descriptor at the root of the package that describes all the important input and output data files.
* (Meta) The template structure should have no special software or skill prerequisites to install. Specifically, deploying the template structure should not require installing git, or using the command line.
