# cor
Empirical Fire Correlations

This repository contains the materials needed to compile NIST Special Publication 1169, _Verification and Validation of Commonly Used Empirical Correlations for Fire Scenarios_. To make use of these materials, you need a Fortran compiler, Matlab, LaTeX, and a linux bash shell. The linux and/or bash shell are not absolutely necessary, but all of the scripts in this repository are bash. It is also assumed that you have the Git repository `firemodels/fds` cloned in the same directory as `firemodels/cor`.

The process to compile the document is basically as follows:
  * Run the bash shell script `Validation/Run_Correlation_Cases.sh`. This script compiles the Fortran program `Source/correlation.f90` and then estimates the various measured quantities from the experiments listed in the `Validation` sub-directories.
  * Run the bash shell script `Utilities/Run_Correlation_Matlab_Validation.sh` which runs the Matlab script `Utilities/Correlation_validation_script.m`
  * Compile the LaTeX document `Manuals/Correlation_Guide.tex` by running the bash shell script `Manuals/make_guide.sh`

There is a single bash shell script called `Utilities/correlation_bot.sh` that automatically runs these various scripts. However, you should look at the scripts you intend to run and make the necessary adjustments. 
